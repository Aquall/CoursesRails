class AddEmailToSubscriber < ActiveRecord::Migration[7.0]
  def change
    add_column :subscribers, :email, :string
  end
end
