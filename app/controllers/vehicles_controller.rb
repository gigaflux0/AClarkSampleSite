class VehiclesController < ApplicationController

  def new
  end

  def search
  	carSearch = params[:carSearch]
  	@results = Vehicle.all
  	if !carSearch[:make].blank?
  	  @results = @results.where(make: carSearch[:make])
    end
    if !carSearch[:model].blank?
  	  @results = @results.where(model: carSearch[:model])
    end
    if !carSearch[:web_name].blank?
  	  @results = @results.joins(:branch).where(:branches => { :web_name => carSearch[:web_name] })
    end
    if carSearch[:minprice].blank?
  	  carSearch[:minprice] = '0'
    end
    if carSearch[:maxprice].blank?
  	  carSearch[:maxprice] = '10000000'
    end
  	@results = @results.where("CAST(price AS INT) >= ?", carSearch[:minprice].to_i)
  	@results = @results.where("CAST(price AS INT) <= ?", carSearch[:maxprice].to_i)

  	render 'browser'
  end

  def browser
  end

  def profile
  end

end
