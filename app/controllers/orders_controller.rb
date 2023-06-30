class OrdersController < ApplicationController

  include Pagy::Backend


  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :set_customers_and_processors, only: [:new, :edit]

  def new
    @order = Order.new
  end

  def index
    @pagy, @orders = pagy(policy_scope(Order), items: 6)
  end

  def create
    @order = Order.new(order_params)
    @order.processor = User.find_by(id: params[:order][:processor_id]) 

    respond_to do |format|
      if @order.save
        format.turbo_stream
        format.html { redirect_to @order, notice: 'Order was successfully created.' } 
      else
        render :new
      end
    end
  end

  def update
    authorize @order

    respond_to do |format|
      if @order.update(order_params)
        format.turbo_stream { render turbo_stream: turbo_stream.replace('orders', partial: 'orders/form', locals: {order: @order}) }
        format.html { redirect_to @order, notice: 'Order was successfully updated.' } 
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
  end



  def destroy
    authorize @order
  
    @order.destroy
    redirect_to orders_path, notice: 'Order was successfully deleted.'
  end

  

  private

  def order_params
    params.require(:order).permit(:customer_id, :processor_id, :order_number, :start_date, :end_date, :prize, :currency)
  end

  def set_order
    @order = Order.find_by(id: params[:id])
  end

  def set_customers_and_processors
    @customers = Customer.all
    @processors = Processor.all
  end

end
