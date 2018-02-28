class StatesController < ApplicationController
  def index
  	@states = State.paginate(page: params[:page], per_page: 10)
  end
  
  def show
	 @state = State.find(params[:id]) 
	end
  
end
