class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    # @event = Event.find(params[:event_id])
    # chatroom = @event.chatroom
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
