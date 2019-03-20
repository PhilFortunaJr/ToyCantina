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
