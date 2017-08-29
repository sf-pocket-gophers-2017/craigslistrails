class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by(id: params[:id])
    #@article = @category.articles.new
  end
end


# find by id column
