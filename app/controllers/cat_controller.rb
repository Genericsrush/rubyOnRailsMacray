class CatController < ApplicationController
  def show
    @cat = Cat.find(params[:id])
  end

  def index
    @cats = Cat.all
  end
end
