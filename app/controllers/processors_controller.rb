class ProcessorsController < ApplicationController

  def index
    @processors = Processor.all
    @users = User.all
  end

  def show
    @processor = Processor.find_by(id: params[:id])
    @user = @processor.user
  end

end