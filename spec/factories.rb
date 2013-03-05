Factory.define :player do |player|
  player.playerID     "Mozo001"
  player.yearID        1987
  player.teamID        "LAA"
  player.G             1
  player.AB            200 
  player.R             3
  player.H             4
  player.TWOB          5
  player.THREEB        6
  player.HR            7
  player.RBI           8
  player.SB            9
  player.CS            10
  
end

Factory.sequence :playerID do |n|
 "<a>person-#{n}</a>"
end
Factory.sequence :AB do |n|
  :AB + n
end
