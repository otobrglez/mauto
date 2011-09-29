class CarsController < ApplicationController
  
  respond_to :html, :js

  def index
  	@decision = Decision.new
  	@cars = @decision.decide
  end

  def show
  	@car = Car.find(params[:id])
  end

  def decide
  	@decision = Decision.new params[:decision]
  	
  	if @decision.valid?
  		@cars = @decision.decide
  	else
  		@cars = Decision.new.decide
	end

  	respond_with(@cars) do |f|
  		f.html { render :index }
  		f.js { render :decide, :layout => false}
  	end
  end

end
