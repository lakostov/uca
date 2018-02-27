require 'csv'
namespace :latlong do
  desc "Pull beer style brewery state into the database"
  task seed_latlong: :environment do

    #drop old data before importing new data
  

  	CSV.foreach("lib/assets/US_Brews/statelatlong.csv", :headers =>true) do |row |

      #update new lat long columns with the data
      state = State.where(abrv: row[0])
      state.update(lat: row[1], long: row[2])
    
    end

  end

end
