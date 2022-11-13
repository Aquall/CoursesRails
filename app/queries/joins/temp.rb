# frozen_string_literal: true

module Joins
  class ShowAllBooksInfo
    def self.call
        Book.includes(:genres).find_each do |book|
            puts "#{book&.name} #{book&.genres&.first&.name}"
        end 
    end
  end
end





