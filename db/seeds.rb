# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Subscription.delete_all
AuthorsBook.delete_all
BooksGenre.delete_all
Book.delete_all
Genre.delete_all
Author.delete_all
Subscriber.delete_all


(0..5).each do |number| 
           Book.create(name: "book#{number}",year: rand(1990..2022), quantity: rand(0..50), status: rand(0..1),
           authors_attributes: [{name: "author#{number}"}],
           genres_attributes: [{name: "genre#{number}"}])
end

#     Book.create!(name: "Alah!", year: 1888, quantity: 3)

# (0..5).each do |number|
#     Author.create!(name: "author#{number}")
# end


(0..5). each do |number|
    Subscriber.create!(name: "subscriber#{number}", email: Faker::Internet.email(name: Faker::Name.name, separators: '_', domain: 'mail.ru'))
end


(0..5). each do |number|
    subscriber = Subscriber.order(Arel.sql('RANDOM()')).first
    book = Book.order(Arel.sql('RANDOM()')).first
    start = DateTime.new(rand(2018..2020), rand(1..5), rand(1..28), 10, 5, 6)
    finish = start + 1.year
    Subscription.create!( subscriber: subscriber, 
                                        book: book, 
                                        start: start, 
                                        finish: finish, 
                                        is_active: [true, false].sample)
end