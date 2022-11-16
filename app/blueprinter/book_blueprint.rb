class BookBlueprint < Blueprinter::Base

  fields :name 

  association :genres, blueprint: GenreBlueprint
  association :authors, blueprint: AuthorBlueprint

  # field :subscriptions_count do |book|
  #   book.subscriptions.count
  # end

end