class PlayersController < ApplicationController
  def index
     @title = "All Players"
     @players = Player.all
  end
end
