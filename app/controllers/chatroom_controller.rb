class ChatroomController < ApplicationController
   def index
    @current_user = current_user
    
    @rooms = Chatroom.public_rooms
    @users = User.all_except(@current_user)
  end
end
