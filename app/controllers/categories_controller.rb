class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
    @tasks = Task.all
  end

  def tasksToday
    @tasks = Task.all
  end

  def new
    @category = Category.new
  end

  def create  
    @category = Category.new(category_params)
      if @category.save
        redirect_to category_url(@category), notice: "Created successfully!"

      else
        render :new, status: :unprocessable_entity, notice: "Creation failed!"
      end
  end

  def show
  end

  def edit
  end

  def update
      if @category.update(category_params)
        redirect_to category_url(@category), notice: "Updated successfully"
      else 
        render :edit, status: :unprocessable_entity
      end

  end

  def destroy
    @category.destroy!
      redirect_to categories_url, notice: "Deleted successfully."
  end


end

private
def set_category
  @category =  Category.find(params[:id])
end

def category_params
  params.require(:category).permit( :name, :description)
end