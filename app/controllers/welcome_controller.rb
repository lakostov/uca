class WelcomeController < ApplicationController
  def index
    @ratio=Hash.new
    @states=State.all
    render :layout => 'map'
  end
end
