require 'rails_helper'

describe Comment do
  context "when comment gets created" do
    let(:product) { Product.create!(name: "Cool old toy") }
    let(:user) { User.create!(email: "bob@gmail.com", password: "password123") }

    it "comment not valid without a body" do
      expect(Comment.new(body: "", user:user, product: product, rating: 5)).not_to be_valid
    end
  end

  context "when comment gets created" do
    let(:product) { Product.create!(name: "Cool old toy") }
    let(:user) { User.create!(email: "bob@gmail.com", password: "password123") }

    it "comment not valid without a rating" do
      expect(Comment.new(body: "It is cool", user:user, product: product, rating: nil)).not_to be_valid
    end
  end
end
