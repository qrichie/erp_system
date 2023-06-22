class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :prize
      t.string :currency

      t.timestamps
    end
  end
end
