class Processor < ApplicationRecord
  has_many :orders, foreign_key: 'processor_id'
end
