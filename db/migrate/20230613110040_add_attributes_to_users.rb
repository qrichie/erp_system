class AddAttributesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :department, :string
    add_column :users, :birthday, :datetime
    add_column :users, :is_customer, :boolean
  end
end
