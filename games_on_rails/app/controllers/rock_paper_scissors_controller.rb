class RockPaperScissorsController < ApplicationController
  def new
  end
 
  def show
    # get a random number from 1-3
    @comp_throw = rand(3)+1
 
    # get the user chosen number from params
    # the param is named 'id' because of route convention
    # lastly, we want to turn it from a String to an Integer
    # that way, we can compare it to the secret number (which is an int)
    @user_throw = params[:id].to_i
  	#
  end
end