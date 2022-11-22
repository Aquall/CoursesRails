# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string
#  quantity   :integer          default(0)
#  status     :integer          default("active")
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
        status {1}
        trait :old do
            year {rand(1900..1940)}
        end
        trait :archived do
            status {0}
        end
    end
  end
  
