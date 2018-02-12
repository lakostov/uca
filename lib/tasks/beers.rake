require 'csv'
namespace :beers do
  desc "Pull beer style brewery state into the database"
  task seed_beers: :environment do

    #drop old data before importing new data
    State.destroy_all
  	Brewery.destroy_all
  	Style.destroy_all
  	Beer.destroy_all

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
      state_id: id,
      bid: row[0].to_i
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
    	style_id = style ? style.id.to_i : nil

      brewery = Brewery.find_by(bid: row[6].to_i)
      brewery_id = brewery ? brewery.id.to_i : nil

      #create new model instances with the data
      Beer.create!(
      name: row[4],
      abv: row[1].to_f,
      ibu: row[2].to_f,
      ounces: row[7].to_f,
      brewery_id: brewery_id,
      style_id: style_id
    )
    end

  end

end
