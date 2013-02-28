class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :playerID
      t.integer :yearID
      t.string :teamID
      t.integer :G
      t.integer :AB
      t.integer :R
      t.integer :H
      t.integer :TWOB
      t.integer :THREEB
      t.integer :HR
      t.integer :RBI
      t.integer :SB
      t.integer :CS

      t.timestamps
    end
  end
end
