class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @event = Event.find(params[:event_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    # if @message.save
      @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(
        partial:"messages/message",
        locals: {message: @message}
        )
      )
      head :ok
    #   redirect_to event_chatroom_path(@event, @chatroom)
    # else
    #   render "chatrooms/show", status: :unprocessable_entity
    # end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
