require 'csv'


desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do    
    CSV.foreach('lib/tasks/batting.csv', :headers => true) do |row|
      Player.create!(row.to_hash)
    end
end
