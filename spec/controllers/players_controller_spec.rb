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


#   describe "GET 'search'" do
# 
# 
#     it "should reject elements that thier AB < 200" do
#          Player.where("AB > 200").where( "yearID BETWEEN 2009 and 2010").exists?(id: 2, playerID: "aardsda01", yearID: 2010, teamID: "SEA",
#          G: 53, AB: 0, R: 0, H: 0, TWOB: 0, THREEB: 0, HR: 0, RBI: 0, SB: 0, CS: 0, created_at: "2013-02-28 15:05:39",
#          updated_at: "2013-02-28 15:05:39").should be_false
#     end
# 
#     it "should include elements that thier AB > 200 and thier yearID is between 2009 and 2010" do
#          Player.exists?(playerID: "beltrad01", yearID: 2010, teamID: "BOS",
#          G: 154, AB: 589, R: 84, H: 189, TWOB: 49, THREEB: 2, HR: 28, RBI: 102, SB: 2, CS: 1).should be_true
#         # ,
#         # updated_at: "2013-02-28 15:05:40").should be_true
#     end
# 
#     it "should reject elements that thier yearID is not between 2009 and 2010" do
#          Player.where("AB > 200", "yearID BETWEEN 2009 and 2010").exists?(id: 505, playerID: "belowdu01", yearID: 2012, teamID: "DET",
#          G: 27, AB: 1, R: 0, H: 0, TWOB: 0, THREEB: 0, HR: 0, RBI: 0, SB: 0, CS: 0, created_at: "2013-02-28 15:05:40",
#          updated_at: "2013-02-28 15:05:40").should be_false
#     end
# 
#   end

end
