class RoomsController < ApplicationController
before_action :move_to_login, only: [:index]

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render :new
    end
  end

  def index
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to rooms_path
  end

  private

  def move_to_login
    unless user_signed_in? || company_signed_in?
      redirect_to new_user_session_path
    end
  end

  def room_params
    params.require(:room).permit(:room_name, :user_id, :company_id)
  end
end
