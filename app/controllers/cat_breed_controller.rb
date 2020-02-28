# frozen_string_literal: true

class CatBreedController < ApplicationController
  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(:id)
  end
end
