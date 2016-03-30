WebsocketRails::EventMap.describe do
  # You can use this file to map incoming events to controller actions.
  # One event can be mapped to any number of controller actions. The
  # actions will be executed in the order they were subscribed.
  #
  # Uncomment and edit the next line to handle the client connected event:
  #   subscribe :client_connected, :to => Controller, :with_method => :method_name
  #
  # Here is an example of mapping namespaced events:
  #   namespace :product do
  #     subscribe :new, :to => ProductController, :with_method => :new_product
  #   end
  # The above will handle an event triggered on the client like `product.new`.


  namespace :room do
    # subscribe :new_user, to: ChatController, with_method: :new_user
    # subscribe :change_username, to: ChatController, with_method: :change_username

    # The :client_connected method is fired automatically when a new client connects

    # The :client_disconnected method is fired automatically when a client disconnects
    subscribe :disconnect, to: ChatController, with_method: :disconnect

    # You can subscribe any number of controller actions to a single event
    subscribe :connect, to: ChatController, with_method: :connect
    subscribe :send_message, to: ChatController, with_method: :send_message

  end

end
