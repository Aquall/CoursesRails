class AddAuthorsName < ActiveRecord::Migration[7.0]
  def change
    add_index :authors, :name, unique: true
  end
end
