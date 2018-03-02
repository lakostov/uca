class StatesController < ApplicationController
  def index
  	@states = State.paginate(page: params[:page], per_page: 10)
  end
  
  def show
	 @state = State.find(params[:id]) 
	 @num_beers = Beer.where('brewery_id IN (?)', @state.breweries.select(:id)).count()
	 @beers = Beer.where('brewery_id IN (?)', @state.breweries.select(:id))
	 @styles = Beer.where('brewery_id IN (?)', @state.breweries.select(:id)).group(:style_id).count()
  end
  
  def beers
     @state = State.find(params[:id])
     @num_beers = Beer.where('brewery_id IN (?)', @state.breweries.select(:id)).count()
	   @beers = Beer.where('brewery_id IN (?)', @state.breweries.select(:id))
  end

  
end
