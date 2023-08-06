class TodoingsController < ApplicationController
    before_action :authenticate_user!
    def index 
        @todoings= current_user.todoings.all
    end

    def show
        @todoing=Todoing.find(params[:id])
    end

    def new
        @todoing=cureent_user.todoings.build
    end

    def create
        @todoing=current_user.todoings.build(todoing_params)
        if @todoing.save
            redirect_to_@todoing
        else
            render 'new'
        end
    end

    def update
        if @todoing.update(todoing_params)
          redirect_to todoing_path(@todoing)
        else
          render :edit
        end
    end
     
    def destroy
    end


    private
    def todoing_params
        params.required(:todoing).permit(:title,:content)
    end
end
