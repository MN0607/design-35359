class DesignsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :index_co]

  def index
  end

  def index_co
  end

  def mypage
    @user = current_user
    @design1 = Design.where(user_id: @user.id, category_id: 2)
    @design2 = Design.where(user_id: @user.id, category_id: 3)
  end

  def new
    @design = Design.new
  end

  def create
    @design = Design.new(desgin_params)
    if @design.valid?
      @design.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def desgin_params
    params.require(:design).permit(:title, :explanation, :category_id, :image).merge(user_id: current_user.id)
  end


end
