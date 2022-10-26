class AuthorsController < ApplicationController

    def index
        @authors = Author.all
    end

    def show
        @authors = Author.find(params[:id])
    end

    def new
        @author = Author.new
    end

    def create
        @author = Author.new(article_params)
 
        if @author.save
            redirect_to root_path, notice: 'Success!'
          else
            render :new, status: :unprocessable_entity
        end
    end
    
    private
    def article_params
        params.require(:author).permit(:first_name, :last_name, :homepage)
    end

end
