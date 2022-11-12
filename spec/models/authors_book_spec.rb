require 'rails_helper'

RSpec.describe AuthorsBook, type: :model do
    
    context 'associations' do
        subject {create_list(:author_with_books, 2, books_count: 2) }
        it { should belong_to(:book) }
        it { should belong_to(:author)}
    end

    describe 'validations' do
        subject { build(:author) 
                  build(:book)              }
        it { should validate_presence_of(:book_id)}
        it { should validate_presence_of(:author_id)}
        it { should validate_uniqueness_of(:book_id).scoped_to(:author_id)}
    end
end