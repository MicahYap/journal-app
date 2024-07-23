require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  before do
    @categories = create(:category)
  end

  describe 'should get #new' do
    it 'returns success' do
      get :new
      expect(response).to be_successful
    end
  end

  describe 'should #create' do
    it 'creates new category' do
      expect{
        post :create, params: { category: { name: 'New Category', description: 'New description' } }
      }.to change(Category, :count).by(1)
      expect(response).to redirect_to(category_path(Category.last))
    end
  end

  describe 'get #show' do
    it 'should get show' do
      get :show, params: { id: @category.to_param }
      expect(response).to be_successful
    end
  end

  describe 'should #delete' do
    it 'should delete' do
      expect {
        delete :destroy, params: { id: @category.to_param }
      }.to change (Category, :count).by(1)
      expect(response).to redirect_to(categories_path)
    end
  end


end