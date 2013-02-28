class Player < ActiveRecord::Base
  attr_accessible :AB, :CS, :G, :H, :HR, :R, :RBI, :SB, :THREEB, :TWOB, :playerID, :teamID, :yearID
end
