class MovieAppController < ApplicationController
  
  def index
  	@movies = Movie.all
  end
 
end

