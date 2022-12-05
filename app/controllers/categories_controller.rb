class CategoriesController < ApplicationController

    def index
        @categories = Category.all
    end

    def show
        @category = Category.find(params[:id])
    end

    def new
        @category = Category.new
    end

    def create
        @category = Category.new()
    end

    def edit
        @category = Category.find(params[:id])
    end

    def update
        # @category = Category.find(params[:id])
        # if @category.update(category_param)
        #     redirect_to categories_path
        # else
        #     render :edit, status :unprocessable_entity
        # end
    end

    def delete
    end


end
