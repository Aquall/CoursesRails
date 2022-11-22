# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Api/V1/Authors', type: :request do
  describe '#index' do
    before do
      create(:author_with_books, books_count: 2)
    end

    it 'creates a Books' do
      get '/api/v1/books'
      expect(response).to have_http_status(:ok)
    end

    it 'retunrs 2 items' do
      get '/api/v1/books.json'
      expect(JSON.parse(response.body).count).to eq(2)
    end
  end

  describe '#show' do
    let!(:author_book)  {create(:author_with_books, books_count: 2)}

    it 'returns book with id 1' do
      get '/api/v1/books/1'
      expect(JSON.parse(response.body)["name"]).to eq(author_book.books.first.name)
    end
  end
end
