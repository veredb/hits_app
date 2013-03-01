class PlayersController < ApplicationController
  def index
     @title = "All Players"
     @players = Player.all
  end

  def show
      @player = Player.find(params[:id])
  end

  def search
      @title = "Search Players"
      @players = Player.where('AB > 200').where('yearID BETWEEN 2009 and 2010').order('H/AB DESC')
  end
end
