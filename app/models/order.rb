class Order < ApplicationRecord
  belongs_to :customer, class_name: 'User', foreign_key: 'customer_id'
  belongs_to :processor, class_name: 'User', foreign_key: 'processor_id'

  after_create :add_order_to_user

  private

  def add_order_to_user
    customer.orders << self
    customer.save
    processor.orders << self
    processor.save
  end
  

end
