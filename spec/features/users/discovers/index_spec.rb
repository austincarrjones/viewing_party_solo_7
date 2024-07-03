require 'rails_helper'

RSpec.describe "Discover Index" do
  before :each do
    @user = User.create!(name: 'Tommy', email: 'tommy@email.com')

    visit user_discovers_path(@user)
  end

  it "should display a button to discover top rated movies" do 
    expect(page).to have_button("Find Top Rated Movies")

    click_button ("Find Top Rated Movies")

    expect(current_path).to eq(user_movies_path(@user))
  end

  it "should display a text field to enter keyword(s) to search by movie title" do
    expect(page).to have_field("search")
  end

  it "should display a button to search by movie title" do 
    expect(page).to have_button("Find Movies")
    
    # fill_in :search, with: "Jurassic Park"
    click_button ("Find Movies")

    expect(current_path).to eq(user_movies_path(@user))
  end

end