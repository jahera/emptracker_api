class Api::V1::RoomsController < ApplicationController
  respond_to :json
	before_action :authenticate_user!

	def index
		@rooms = Room.all

		if @rooms
			# render json: {
	    #   status: { 
	    #     code: 200,
	    #     data: { rooms: @rooms }
	    #   }
	    # }, status: :ok
		  render json: @rooms, serializer: RoomSerializer, status: :ok
		else
			 render json: @rooms.errors, status: :bad_request
		end

		# render json: {
    #   status: { 
    #     code: 200, message: 'Logged in successfully.',
    #     data: { room: RoomSerializer.new(@rooms.first).serializable_hash[:data][:attributes] }
    #   }
    # }, status: :ok

	  # friends = User.all

	  # if friends
	  #   render json: {status: "SUCCESS", message: "Fetched all the friends successfully", data: friends}, status: :ok
	  # else
	  #   render json: friends.errors, status: :bad_request
	  # end
	end

	def create
		room = Room.create(room_param)
    render json: room
	end

	def destroy
    room = Room.find(params[:id])
    room.destroy
    render json: {status: "Success", message: "Room deleted successfully"}, status: :ok
  end

  def update
    tdlist = Room.find(params[:id])
    tdlist.update(tdlist_param)
    render json: room
  end

	private
  def room_param
    params.require(:room).permit(:name, :is_private)
  end
end