require 'rails_helper'
describe ProductsController, type: :controller do

  before do
    @product = FactoryBot.create(:product)
    @user = FactoryBot.create(:user)
    # @admin = FactoryBot.create(:admin)
  end

  describe 'GET #index' do
    it 'renders products index page' do
        get :index
        expect(response).to be_ok
        expect(response).to render_template('product')
    end
  end

  describe 'Get #show' do
    it 'render products show page' do
        get :show, params: {id: @product}
        expect(response).to be_ok
        expect(response).to render_template('product')
    end
  end

  describe 'Get #new' do
    before do
      sign_in @admin
    end
    it 'redirects to new product page' do
      get :new, params: {id: @product}
      expect(response).to be_ok
    end
  end

  describe 'Get #edit' do
    before do
      sign_in @admin
    end
    it 'redirects to edit page' do
      get :edit, params: {id: @product}
      expect(response).to be_ok
      expect(response).to render_template('edit')
    end
  end

  describe 'Post #create' do
    before do
      sign_in @admin
    end
    it 'creates a new product' do
      expect(response).to be_successful
    end
  end

  describe 'DELETE #destroy' do
    before do
      sign_in @admin
    end
    it 'destroys a product' do
      delete :destroy, params: {id: @product}
      expect(response).to redirect_to products_path
    end
  end

end
