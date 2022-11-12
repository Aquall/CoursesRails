class AddEmailToSubscriber < ActiveRecord::Migration[7.0]
  def change
    add_column :subscribers, :email, :string, null: false
  end
end
