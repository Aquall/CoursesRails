# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_authors_on_name  (name) UNIQUE
#
FactoryBot.define do
    factory :author do
        sequence(:name) { |n| "name#{n}" }
        trait :in_valid do
            name {'name1'}
        end
        factory :author_with_books do
            transient do
                books_count { 5 }
            end
            after(:create) do |authors, evaluator|
                create_list(:book, evaluator.books_count, author: author)
        
                authors.reload
            end
        end
    end
end
  
