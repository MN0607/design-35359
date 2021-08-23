class DesignsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :index_co,:search_index, :search]
  before_action :get_design_params, only: [:show, :edit, :update, :destroy]
  before_action :search_product, only: [:search_index, :search]

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
    @design = Design.new(design_params)
    if @design.valid?
      @design.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @design.update(design_params)
      redirect_to design_path
    else
      render :edit
    end
  end

  def destroy
    redirect_to mypage_designs_path if @design.destroy
  end

  def search_index
    @designs = Design.all
    set_category_column
  end

  def search
    @results = @p.result
  end

  private

  def design_params
    params.require(:design).permit(:title, :explanation, :category_id, :image).merge(user_id: current_user.id)
  end

  def get_design_params
    @design = Design.find(params[:id])
  end

  def search_product
    @p = Design.ransack(params[:q])
  end

  def set_category_column
    @category_name = Design.select("category_id").distinct
  end

end
