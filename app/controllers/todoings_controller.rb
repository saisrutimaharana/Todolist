class TodoingsController < ApplicationController
    def index 
        @todoings= Todoing.all
    end

    def show
        @todoing=Todoing.find(params[:id])
    end

    def new
        @todoing=Todoing.new
    end

    def create
        @todoing=Todoing.new(todoing_params)
        if @todoing.save
            redirect_to_@todoing
        else
            render 'new'
        end
    end

    def destroy
    end

    private
    def todoing_params
        params.required(:todoing).permit(:title,:content)
    end
end
