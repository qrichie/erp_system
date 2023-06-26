class Currency < ActiveRecord::Base
  enum currency: [ :euro, :dollar ]
end