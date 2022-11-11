# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
    context 'associations' do
        it { should have_many(:books_genres) }
        it { should have_many(:genres).through(:books_genres)}
        it { should have_many(:authors_books)}
        it { should have_many(:authors).through(:authors_books)}
    end
    
    describe 'validations' do
        it { should validate_uniqueness_of(:name).scoped_to(:year).with_message('must be unique!')}
    end
end
