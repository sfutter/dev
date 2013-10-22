class RatingsController < ApplicationController

	http_basic_authenticate_with name: "sf", password: "secret", only: :destroy

	def create
	    @movie = Movie.find(params[:movie_id])
	    @rating = @movie.ratings.create(params[:rating].permit(:rater, :rating))
	    redirect_to movie_path(@movie)
	end


end


