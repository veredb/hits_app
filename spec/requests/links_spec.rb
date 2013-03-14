describe "Links" do

  it "should have a Index page at '/'" do
    get "/"
    response.should have_selector('title', :content => "All Players")
  end 


  it "should have a New page at 'players/search'" do
    get 'players/search'
    response.should have_selector('title', :content => "Search Players")
  end


   describe "when not in Search Players page" do

     it "should have a Search Players link" do
        visit root_path
        response.should have_selector("a", :href => search_players_path,
                                           :content => "Search Players")
     end
   end


   describe "when in Search Players page" do

     it "should have a All Players link" do
        visit search_players_path
        response.should have_selector("a", :href => players_path,
                                           :content => "All Players")
     end
    end


    describe "when not in Slugging Percentage page" do

     it "should have a Slugging Percentage link" do
        visit root_path
        response.should have_selector("a", :href => slugging_players_path,
                                           :content => "Slugging Percentage")
     end
   end


   describe "when in Slugging Percentage page" do

     it "should have a All Players link" do
        visit slugging_players_path
        response.should have_selector("a", :href => players_path,
                                           :content => "All Players")
     end
    end



    describe "when not in Fantasy Scoring page" do

     it "should have a Fantasy Scoring link" do
        visit root_path
        response.should have_selector("a", :href => fantasy_players_path,
                                           :content => "Fantasy Scoring")
     end
   end


   describe "when in Fantasy Scoring page" do

     it "should have a All Players link" do
        visit fantasy_players_path
        response.should have_selector("a", :href => players_path,
                                           :content => "All Players")
     end
    end


   describe "when not in Triple Crown page" do

     it "should have a Triple Crown  link" do
        visit root_path
        response.should have_selector("a", :href => triple_crown_players_path,
                                           :content => "Triple Crown")
     end
   end

end
