class Processor < ApplicationRecord
  has_many :orders
  belongs_to :user
end
