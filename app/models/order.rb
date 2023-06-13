class Order < ApplicationRecord
  belongs_to :customer, class_name: 'User', foreign_key: 'customer_id'
  belongs_to :processor, class_name: 'User', foreign_key: 'processor_id'
end
