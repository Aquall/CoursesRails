require 'rails_helper'

RSpec.describe AuthorsBook, type: :model do
    before do
        create(:author, 5)
        create(:book, 5)
    end
    
    context 'associations' do
        it { should belong_to(:book) }
        it { should belong_to(:author)}
    end

    describe 'validations' do
        it { should validate_presence_of(:book_id)}
        it { should validate_presence_of(:author_id)}
        it { should validate_uniqueness_of(:book_id).scoped_to(:author_id)}
    end
end