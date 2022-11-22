# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_genres_on_name  (name) UNIQUE
#
FactoryBot.define do
    factory :genre do
        sequence(:name) { |n| "name#{n}" }
        factory :books_with_genre do
            transient do
              books_count { 5 }
            end
            after(:create) do |genres, evaluator|
              (0...evaluator.books_count).each do
                genres.books << FactoryBot.create(:book)
              end
              genres.reload
            end
        end
    end
end
  
