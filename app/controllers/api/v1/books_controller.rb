# frozen_string_literal: true

module Api
  module V1
    class BooksController < ApplicationController
      before_action :set_book, only: %i[show edit update destroy]

      # GET /books or /books.json
      def index
        @books = Book.includes(:genres, :authors)
        render json: BookBlueprint.render(@books)
      end

      # GET /books/1 or /books/1.json
      def show
        @book = Book.find(params[:id])
        render json: BookBlueprint.render(@book)
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_book
        @book = Book.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def book_create_params
        params.require(:book).permit(:name, :year, :quantity, authors_attributes: [:name], genres_attributes: [:name])
      end
    end
  end
end
