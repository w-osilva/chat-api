class ChatController < WebsocketRails::BaseController
  # def initialize_session
  #   # perform application setup here
  #   controller_store[:message_count] = 0
  # end

  def send_message
     user = message[:username]
     room = message[:room]
     text = message[:message]

     WebsocketRails[room].trigger('room.broadcast', "#{user} says: #{text}")
  end

  def connect
    user = message[:username]
    room = message[:room]

    WebsocketRails[room].trigger('room.broadcast', "User #{user} joined the room")
  end

  def disconnect
    user = message[:username]
    room = message[:room]

    WebsocketRails[room].trigger('room.broadcast', "User #{user} left the room")
  end

end