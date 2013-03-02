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
                                           :content => "search_players")
     end
  end

end
