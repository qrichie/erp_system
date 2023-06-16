class Processor < ApplicationRecord
  has_many :orders, foreign_key: 'processor_id'
  belongs_to :user
end
