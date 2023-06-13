class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    @order.customer = current_user # Set the customer to the current user
    @order.processor = User.find(params[:order][:processor_id]) # Set the processor based on the selected ID

    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:customer_id, :processor_id, :order_number, :start_date, :end_date, :prize, :currency)
  end

end
