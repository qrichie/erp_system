class OrderPolicy < ApplicationPolicy

  def initialize(user, order)
    @user = user
    @order = order
  end

  def create?
    !user.is_customer
  end

  def update?
    !user.is_customer
  end

  def destroy?
    !user.is_customer
  end


end