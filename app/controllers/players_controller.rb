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

  def slugging
      @title = "Slugging Percentage"
      @players = Player.where('teamID = "OAK"').where('yearID = 2007').order('((H - TWOB - THREEB - HR) + (2 * TWOB) + (3 * THREEB) + (4 * HR)) / AB  DESC')
  end

  def fantasy
      @title = "Fantasy Scoring"
      @players = Player.where('yearID BETWEEN 2011 and 2012').where('AB > 500').order('((HR * 4) + RBI + SB + CS) DESC').limit(5)
  end

  def triple_crown
      @playerH_AB = Player.where('yearID BETWEEN 2011 and 2012').order('(H/AB) DESC').first
      @playerHR = Player.where('yearID BETWEEN 2011 and 2012').order('HR DESC').first
      @playerRBI = Player.where('yearID BETWEEN 2011 and 2012').order('RBI DESC').first

      if (@playerH_AB == @playerHR && @playerHR == @playerRBI)
         @title = "Triple Crown"
         @players = @playerHR
         
      else
         flash.now[:success] = "No winner"
         @players = Player.all
         render 'index'
      end
  end
end
