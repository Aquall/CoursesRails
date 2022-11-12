# frozen_string_literal: true

module Books
  class FindBooksWithGeneralGenre
      def self.call
        Book.joins(:books_genres).count(:book_id)
      end 
    end
  end
end
