class ToptenController < ApplicationController
    
    def craftystates
        @states = State.all
        @states_beers = count_beers @states
    end
    
    def strongestbrews
        
    end
    
    def brewedstyles
        
    end
    
    def count_beers states
      states_beers = {}
      states.each do |s|
          count = 0
          s.breweries.each do |br|
      	     count += br.beers.count()
          end
        states_beers[s.name] = count
      end
      return states_beers.sort_by {|_key, value| value}.reverse.to_h
    end
    
end
