class VehiclesController < ApplicationController

  def new
  	@carSearch = { make: "", model: "", minprice: "", maxprice: "" }
  end

  def search
  	
  	render 'browser'
  end

  def browser
  end

  def profile
  end

end
