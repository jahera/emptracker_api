class Api::V1::DashboardController < ApplicationController
	# include RackSessionsFix
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

	# Show a specific friend GET request
	# def show
	#   friend = User.find(params[:id])

	#   if friend
	#     render json: {data: friend}, state: :ok
	#   else
	#     render json: {message: "Friend could not be found"}, status: :bad_request
	#   end
	# end

	# Delete a specific friend DELETE request
	# def destroy
	#   friend = User.find(params[:id])

	#   if friend.destroy!
	#     render json: {message: "Friend was deleted successfully"}, status: :ok
	#   else
	#     render json: {message: "Friend does not exist"}, status: :bad_request
	#   end
	# end

	# Update details for a specific friend. PATCH request
	# def update
	#   friend = User.find(params[:id])

	#   if friend.update!(friend_params)
	#     render json: {message: "Friend was updated successfully", data: friend}, status: :ok
	#   else
	#     render json: {message: "Friend cannot be updated"}, status: :unprocessable_entity
	#   end
	# end
end
