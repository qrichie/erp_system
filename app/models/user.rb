class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 
  has_many :orders
  has_many :processors

  after_create :create_customer_if_customer

  private

  def create_customer_if_customer
    if is_customer
      Customer.create(user_id: id)
    else 
      Processor.create(user_id: id)
    end
  end

end
