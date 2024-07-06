require "rails_helper"

RSpec.describe MovieService do
  it "should return a resposne body parsed from JSON when given a search paramater" do 
    WebMock.disable!
    WebMock.disable_net_connect!
    
    response = MovieService.search("Jurassic Park")

    expect(response).to be_a Array
    first_response = response.first

    expect(first_response).to have_key :title
    expect(first_response[:title]).to be_a String
  end
end