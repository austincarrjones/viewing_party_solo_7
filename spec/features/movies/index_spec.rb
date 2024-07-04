require 'rails_helper'

RSpec.describe "Movies Index" do
  before :each do
    @user = User.create!(name: 'Tommy', email: 'tommy@email.com')
  end

  describe "when I visit discover movies page and click on Top Rated Movies button I am taken to movies results page" do 
    it "should show a list of the top movie titles" do
      visit user_discovers_path(@user)
      
      click_button ("Find Top Rated Movies")
      save_and_open_page
      expect(current_path).to eq(user_movies_path(@user))
      expect(page).to have_content("Shawshank Redemption")
    end
  end

  describe "when I visit discover movies page and click Find Movies button I am taken to movies results page" do 
    xit "should list partial matches as search results" do
      visit user_discovers_path(@user)
      
      fill_in "Search", with: "Jurassic"
      click_button ("Find Movies")
      
      expect(current_path).to eq(user_movies_path(@user))
      expect(page).to have_content("Jurassic Park")
    end
  end

  describe "when I visit Movies Index page" do
    xit "should have a Discover Movies link that redirects to Discover page" do
      expect(page).to have_link("Discover Movies")
  
      click_link "Discover Movies"
  
      expect(current_path).to eq(user_discovers_path(@user))
    end
  end
end