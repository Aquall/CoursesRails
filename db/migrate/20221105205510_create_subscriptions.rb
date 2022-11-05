class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.references :subscriber, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.datetime :start
      t.datetime :finish
      t.boolean :is_active

      t.timestamps
    end
  end
end
