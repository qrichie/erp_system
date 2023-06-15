class CustomersController < ApplicationController

def index
  @customers = Customer.all
  @users = User.all
end

def show
  @customer = Customer.find(params[:id])
  @user = User.find_by(id: @customer[:user_id])
end

end
