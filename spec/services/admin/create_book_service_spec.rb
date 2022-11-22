# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api/admin/books', type: :request do
  describe '#create' do
    context 'when creates a Book without authors and genres' do
      let!(:params) { { book: FactoryBot.attributes_for(:book) } }
      it 'creates a Book without author and genres' do
        post '/api/admin/books', params: params
        expect(response).to have_http_status(:created)
      end
    end
    context 'when creates a Book with authors name' do
      @crush = 422
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
        post '/api/admin/books', params: params_two_author_same_name == have_http_status(422)
      end

      it 'creates two a Book with the same genre name' do
        post '/api/admin/books', params: params_two_genre_same_name == have_http_status(422)
      end

      it 'creates a Book' do
        expect { post '/api/admin/books', params: params_author}.to change(Book, :count).by(1)
      end

      it 'creates a Book without genre' do
        expect { post '/api/admin/books', params: params_author}.to change(Author, :count).by(2)
      end

      it 'creates a Book without author' do
        expect { post '/api/admin/books', params: params_genre }.to change(Genre, :count).by(2)
      end

    end
  end
end