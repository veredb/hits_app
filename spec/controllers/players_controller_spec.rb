require 'spec_helper'
require 'factory_girl'
require 'factories'

describe PlayersController do

  render_views

  describe "GET 'index'" do

    before(:each) do
      @player = Factory(:player)
      second = Factory(:player, :playerID => "name2")
      third = Factory(:player, :playerID => "name3")

      @players = [@player, second, third]
     end

    it "returns http success" do
      get 'index'
      response.should be_success
    end

    it "should have the right title" do
       get :index
       response.should have_selector("title", :content => "All Players")
    end

    it "should have an element for each player" do
       get :index
       @players[0..2].each do |player|
          response.should have_selector("li", :content => player.playerID)
       end
    end
  end

end
