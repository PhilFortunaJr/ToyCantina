require 'rails_helper'
describe Product do
  context "when the product has comments" do
    let(:product) {Product.create!(name: "Vintage toy") }
    let(:user) { User.create!(email: "bob@gmail.com", password: "password123") }

    before do
      product.comments.create!(rating: 1, user: user, body: "Not cool")
      product.comments.create!(rating: 3, user: user, body: "Kinda cool")
      product.comments.create!(rating: 5, user: user, body: "Really cool")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end
  end

  context "when product gets created" do
    let(:product) {Product.new(description: "An old toy in good shape") }

    it "product not valid without a description" do
      expect(Product.new(description: "An old toy in good shape")).not_to be_valid
    end
  end
end
