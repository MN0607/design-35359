class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
    @messages = @room.messages.includes(:user, :company)
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    @message.user_id = @room.user_id
    @message.company_id = @room.company_id
    if @message.save
      redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user, :company)
      render :index
    end
  end

  private

  def message_params
      params.require(:message).permit(:content, :image)
  end
end
