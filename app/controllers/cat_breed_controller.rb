# frozen_string_literal: true

class CatBreedController < ApplicationController
  def index
    @breeds = Cat.all
  end

  def show
    @breed = Cat.find(:id)
  end
end
