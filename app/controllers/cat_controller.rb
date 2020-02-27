class CatController < ApplicationController
  def show
    @cat = Cat.find(:id)
  end

  def index
    @cats = Cat.all
  end
end
