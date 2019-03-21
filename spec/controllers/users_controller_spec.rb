require 'rails_helper'

describe UsersController, type: :controller do
  # let(:userA) {User.create!(email: 'bob@gmail.com', password: 'password123') }
  # let(:userB) {User.create!(email: 'tod@gmail.com', password: 'password123') }
  # let(:admin) {User.create!(email: 'rob@gmail.com', password: 'password123') }

  before do
    @user = FactoryBot.create(:user)
    @user2 = FactoryBot.create(:user)
  end

  describe 'GET #show' do
    context 'when a user is logged in' do

      before do
        sign_in @user
      end

      it "blocks user from viewing other user profile" do
        get :show, params: {id: @user2.id}
        expect(response).not_to be_ok
      end

      it "loads correct user details" do
        get :show, params: {id: @user.id}
        expect(response).to be_ok
        expect(assigns(:user)).to eq @user
      end
    end

    context "when a user is not logged in" do
      it "redirects to home" do
        get :show, params: {id: @user.id}
        expect(response).to redirect_to(root_path)
      end
    end
  end
end
