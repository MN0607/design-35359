class DesignsController < ApplicationController
  def index
    @designs = Design.all
  end

  def index_co
  end
end
