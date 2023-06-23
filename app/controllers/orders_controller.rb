class OrdersController < ApplicationController

  include Pagy::Backend


  before_action :set_find_order, only: [:show, :edit, :update, :destroy]
  before_action :set_customers_and_processors, only: [:new, :edit]

  def new
    @order = Order.new
  end

  def index
    @pagy, @orders = pagy(policy_scope(Order), items: 6)
  end

  def create
    @order = Order.new(order_params)
    @order.processor = User.find_by(id: params[:order][:processor_id]) # Set the processor based on the selected ID

    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      flash.now[:alert] = "Alert"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    authorize @order

    if @order.update(order_params)
      redirect_to @order, notice: 'Order was successfully updated.'
    else
      render :new
    end
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

  def set_find_order
    @order = Order.find_by(id: params[:id])
  end

  def set_customers_and_processors
    @customers = Customer.all
    @processors = Processor.all
  end

end
