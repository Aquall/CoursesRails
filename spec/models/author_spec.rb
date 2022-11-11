# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author, type: :model do

    

    describe 'associations' do
        subject { create(:author) }

        it { should have_many(:authors_books) }
        it { should have_many(:books).through(:authors_books)}
    end
    
    describe 'validations' do
        subject {build(:author)}

        it { should validate_presence_of(:name).with_message('must be abided')}
    end
end
