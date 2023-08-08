class TodoingsController < ApplicationController
    before_action :authenticate_user!
    def index 
        @todoings = Todoing.all
        @todoing = Todoing.new
    end

    def show
        @todoing=Todoing.find(params[:id])
    end

    def new
        @todoing=current_user.todoings.build
    end

    def create
        @todoing = Todoing.new(todoing_params)
        if @todoing.save
          redirect_to todoings_path, notice: 'Todo was successfully created.'
        else
          @todoings = Todoing.all
          render :index
        end
      end
      

    def update
        if @todoing.update(todoing_params)
          redirect_to todoing_path(@todoing)
        else
          render :edit
        end
    end
    
    def toggle
      @todoing = Todoing.find(params[:id])
      @todoing.update(completed: !@todoing.completed)
      redirect_to todoings_path, notice: 'Todo status updated.'
    end  
     
    def destroy
      @todoing = Todoing.find(params[:id])
      @todoing.destroy
      redirect_to todoings_path, notice: 'Todo was successfully removed.'
  
    end
    
       

    private
    def todoing_params
        params.required(:todoing).permit(:task,:completed)
    end
end
