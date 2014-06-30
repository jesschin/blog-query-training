class Api::CountriesController < ApplicationController
  def index
    continent = Continent.find(params[:continent_id])
    @countries = continent.countries

    render :json => @countries
  end
end
