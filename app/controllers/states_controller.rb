class StatesController < ApplicationController
  def index
  	@states = State.paginate(page: params[:page], per_page: 10)
  end
  
  def show
	 @state = State.find(params[:id]) 
	 @num_beers = count_beers @state
	 @beers = beers_in_state @state
	 @styles = group_styles_in_state @state
  end
  
  def beers
     @state = State.find(params[:id])
     @num_beers = count_beers @state
	 @beers = beers_in_state @state
  end

	private

    def count_beers state
    	count = 0
      state.breweries.each do |br|
      	count += br.beers.count()
      end
      return count
    end

    def beers_in_state state
       br_id = []
       state.breweries.each do |br|
       br_id << br.id
       end
       beers = Beer.where('brewery_id IN (?)', br_id)
       return beers
    end

    def group_styles_in_state state
       br_id = []
       state.breweries.each do |br|
       br_id << br.id
       end
       styles = Beer.where('brewery_id IN (?)', br_id).group(:style_id).count
       return styles
    end
  
end
