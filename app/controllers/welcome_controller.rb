class WelcomeController < ApplicationController
  def index
    @ratio=Hash.new
    counter = 0
    states=State.all
    states.each do |s|
      s.breweries.each do |b|
        b.beers.each do
          counter += 1
        end
      end
      @ratio[s.abrv]=(counter/(s.population/100000).to_f).to_f
    end
  end
end
