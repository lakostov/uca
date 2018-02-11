require 'csv'
namespace :beers do
  desc "Pull beer style brewery state into the database"
  task seed_beers: :environment do

    #drop old data before importing new data
  	Brewery.destroy_all
  	Style.destroy_all
  	Beer.destroy_all
  	State.destroy_all

  	CSV.foreach("lib/assets/US_Brews/states.csv", :headers =>true) do |row |

      #create new model instances with the data
      State.create!(
      name: row[0],
      abrv: row[1],
      population: row[2].to_i
    )
    end

  	CSV.foreach("lib/assets/US_Brews/breweries.csv", :headers =>true) do |row |

  		state = State.find_by(abrv: row[3])
    	id = state ? state.id.to_i : nil

      #create new model instances with the data
      Brewery.create!(
      name: row[1],
      city: row[2],
      state_id: id
    )
    end

    CSV.foreach("lib/assets/US_Brews/styles.csv", :headers =>true) do |row |

      #create new model instances with the data
      Style.create!(
      name: row[0]
    )
    end

    CSV.foreach("lib/assets/US_Brews/beers.csv", :headers =>true) do |row |

    	style = Style.find_by(name: row[5])
    	id = style ? style.id.to_i : nil

      #create new model instances with the data
      Beer.create!(
      name: row[4],
      abv: row[1].to_f,
      ibu: row[2].to_f,
      ounces: row[7].to_f,
      brewery_id: row[6].to_i,
      style_id: id
    )
    end

  end

end
