class OrderPolicy < ApplicationPolicy

  def initialize(user, order)
    @user = user
    @order = order
  end

  # def create?
  #   !user.is_customer
  # end

  def update?
    !user.is_customer
  end

  def destroy?
    !user.is_customer
  end

  class Scope < Scope
    def resolve
      if user.is_customer
        scope.where(id: @user.customer.orders.ids)
      else
        scope.all
      end
    end
  end


end