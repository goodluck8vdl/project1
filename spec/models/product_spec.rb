require 'rails_helper'

describe Product do
  before do
   #@product = Product.create!(name: "race bike")
   #@user = User.create!(email: "test@gmail.com", password: "testtt")
   @product = FactoryGirl.create(:product)
	 @user = FactoryGirl.create(:user)
   @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
   @product.comments.create!(rating: 3, user: @user, body: "Good bike!")
   @product.comments.create!(rating: 5, user: @user, body: "Awesome bike!")
      #@product.comments.push(FactoryGirl.create(:comment))
	  #@product.comments.push(FactoryGirl.create(:comment))
	  #@product.comments.push(FactoryGirl.create(:comment))
  end
  it "returns the average rating of all comments" do
    expect(@product.average_rating).to eq 3
  end
  it "is not valid" do
    expect(Product.new(description: "Nice bike")).not_to be_valid
  end
end