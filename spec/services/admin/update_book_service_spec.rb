# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api/admin/books/1', type: :request do
  describe '#create' do
    context 'when creates a Book without authors and genres' do
      let!(:params) { { book: FactoryBot.attributes_for(:book) } }
      before do
        create(:book)
      end
      it 'creates a Book without author and genres' do
        patch '/api/admin/books/1', params: params
        expect(response).to have_http_status(:accepted)
      end
    end
    context 'when creates a Book with authors name' do
      before do
        create(:author_with_books, books_count: 1)
      end
      let!(:author) { FactoryBot.create(:author) }
      let!(:author_attributes) { FactoryBot.attributes_for(:author) }
      let!(:book_attributes) { FactoryBot.attributes_for(:book) }
      let(:params_two_author_same_name) do
        {
          book: { name: 'books123', year: 123, quantity: 4, authors_attributes: [{ name: 'Name' }, { name: 'Name' }] }
        }
      end
      let(:params_two_genre_same_name) do
        {
          book: { name: 'books123', year: 123, quantity: 4, genres_attributes: [{ name: 'Name' }, { name: 'Name' }] }
        }
      end
      let(:params_author) do
        {
          book: { name: 'books123', year: 123, quantity: 4, authors_attributes: [{ name: 'Name' }, { name: 'Name1' }] }
        }
      end
      let(:params_genre) do
        {
          book: { name: 'books123', year: 123, quantity: 4, genres_attributes: [{ name: 'Name' }, { name: 'Name1' }] }
        }
      end

      it 'creates two a Book with the same author name' do
        patch '/api/admin/books/1', params: params_two_author_same_name == have_http_status(422)
      end

      it 'creates two a Book with the same genre name' do
        patch '/api/admin/books/1', params: params_two_genre_same_name == have_http_status(422)
      end

      it 'creates a Book' do
        patch '/api/admin/books/1', params: params_author
        expect(response).to have_http_status(:accepted)
      end

      it 'creates a Book without genre' do
        patch '/api/admin/books/1', params: params_author
        expect(response).to have_http_status(:accepted)
      end

      it 'creates a Book without author' do
        patch '/api/admin/books/1', params: params_genre
        expect(response).to have_http_status(:accepted)
      end

    end
  end
end