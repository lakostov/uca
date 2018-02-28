class ApiController < ApplicationController
    
def beer    
    @beers = Beer.all
        render json: @beers
end

def brewery    
    @breweries = Brewery.all
        render json: @breweries
end

def state
    @states = State.all
        render json: @states
end

def style
    @styles = Style.all
        render json: @styles
end

end
