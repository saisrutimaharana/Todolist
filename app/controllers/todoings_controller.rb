class TodoingsController < ApplicationController
  def index
    @todoings = Todoing.all
    @todoing = Todoing.new
  end

  def new
    @todoing = current_user.todoings.build
  end

  def todoing()

  end

  def create
    @todoing = Todoing.new(todoing_params)
    if @todoing.save
      redirect_to todoings_path, notice: 'Todoing was successfully created.'
    else
      render :new
    end
  end

  def edit
    @todoing = Todoing.find(params[:id])
  end

  def update
    @todoing = Todoing.find(params[:id])
    if @todoing.update(todoing_params)
      redirect_to todoings_path, notice: 'Todoing was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @todoing = Todoing.find(params[:id])
    @todoing.destroy
    redirect_to todoings_path, notice: 'Todoing was successfully deleted.'
  end

  private

  def todoing_params
    params.require(:todoing).permit(:title, :completed)
  end
end
