class AddIndexToBooksNameYear < ActiveRecord::Migration[7.0]
  def change
    add_index :books, [:name, :year], unique: true
  end
end
