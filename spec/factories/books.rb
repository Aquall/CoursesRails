# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string
#  quantity   :integer          default(0)
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_books_on_name_and_year  (name,year) UNIQUE
#
FactoryBot.define do
    factory :book do
        sequence(:name) { |n| "name#{n}" }
        year {rand(2017..2020)}
        quantity {rand(1..15)}
        trait :old do
            year {rand(1900..1940)}
        end
        factory :books_with_genre do
            transient do
                genres_count { 5 }
            end
            after(:create) do |books, evaluator|
                create_list(:genre, evaluator.genres_count, books: [books])
        
                books.reload
            end
        end
    end
  end
  
