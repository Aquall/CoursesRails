# frozen_string_literal: true

module Api
  module V1
    class GenresController < ApplicationController
      before_action :set_genre, only: %i[show edit update destroy]

      # GET /genres or /genres.json
      def index
        @genres = Genre.includes(books: %i[genres authors])
        render json: GenreBlueprint.render(@genres)
      end

      # GET /genres/1 or /genres/1.json
      def show
        @genre = Genre.includes(:books_genres).find(params[:id])
        render json: GenreBlueprint.render(@genre)
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_genre
        @genre = Genre.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def genre_params
        params.require(:genre).permit(:name)
      end
    end
  end
end
