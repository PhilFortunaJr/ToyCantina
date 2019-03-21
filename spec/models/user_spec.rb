require 'rails_helper'

describe User do
  context "when user gets created" do
    let(:user) {User.new(email: "bob@gmail.com", password: "password123") }
  end

  it "user not valid without an email" do
    expect(User.new(email: "", password: "password123")).not_to be_valid
  end

    context "when user gets created" do
      let(:user) {User.new(email: "bob@gmail.com", password: "password123") }
    end

    it "user not valid without a password" do
      expect(User.new(email: "bob@gmail.com", password: "")).not_to be_valid
    end
end


describe User, type: :model do
  it "should not validate users without an email address" do
    @user = FactoryBot.build(:user, email: "not_an_email")
    expect(@user).to_not be_valid
  end
end
