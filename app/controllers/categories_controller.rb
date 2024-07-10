class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update]

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to category_url(@category), notice: "Created successfully!"}

      else
        format.html {render :new, status: :unprocessable_entity, notice: "Creation failed!"}
      end
    end  
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to category_url(@category), notice: "Updated successfully" }
      else 
        format.html { render :edit, status: :unprocessable_entity}
      end
    end
  end


end

private
def set_category
  @category =  Category.find(params[:id])
end

def category_params
  params.require(:category).permit(:task, :description)
end