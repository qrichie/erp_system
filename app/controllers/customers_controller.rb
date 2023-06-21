class CustomersController < ApplicationController

def index
  @customers = Customer.all
  @users = User.all
end

def show
  @customer = Customer.find_by(id: params[:id])
  @user = @customer.user
end

end
