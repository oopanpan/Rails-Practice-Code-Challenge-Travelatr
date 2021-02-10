class BloggerController < ApplicationController
    before_action :find_blogger, only: [:show, :edit, :update, :destoy]

    def index
        @bloggers = Blogger.all
    end

    def show
    end

    def edit
    end

    def update
    end





    private

    def find_blogger
        @blogger = Blogger.find(params[:id])
    end

    def blogger_params
        params.require(:blogger).permit(:name, :bio, :age)
    end
end
