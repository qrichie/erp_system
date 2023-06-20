class CustomersController < ApplicationController

def index
  @customers = Customer.all
  @users = User.all
end

def show
  # @customer = Customer.find(params[:id])
  # @user = User.find_by(id: @customer[:user_id])
  @customer = Customer.find_by(user_id: params[:id])
  @user = User.find_by(id: params[:id])
end

end
