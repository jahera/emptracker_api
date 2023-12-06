class Api::V1::RoomsController < ApplicationController
  respond_to :json
	before_action :authenticate_user!

	def index
		render json: {
	    message: "This is a secret message. You are seeing it because you have successfully logged in." 
	    }
	    
	  # friends = User.all

	  # if friends
	  #   render json: {status: "SUCCESS", message: "Fetched all the friends successfully", data: friends}, status: :ok
	  # else
	  #   render json: friends.errors, status: :bad_request
	  # end
	end
end