# frozen_string_literal: true

module Authors
  class FindAuthorsWithAllUniqueInformationAboutBooks
      def self.call
        Authors.joins(:genres, :books).
      end 
    end
  end
end
