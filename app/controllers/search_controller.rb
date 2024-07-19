class SearchController < ApplicationController
  def index 
    # @nation = Nation.find_by(params[:name])
    @nation = params[:nation].gsub("+", " ")
    facade = AirBenderFacade.new(params["nation"])

    @nation_members = facade.get_nation_members
  end

end