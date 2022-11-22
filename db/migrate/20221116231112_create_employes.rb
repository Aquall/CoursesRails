class CreateEmployes < ActiveRecord::Migration[7.0]
  def change
    create_table :employes do |t|
      t.string :name
      t.string :string
      t.string :role
      t.string :integer

      t.timestamps
    end
  end
end
