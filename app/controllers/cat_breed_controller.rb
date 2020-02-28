# frozen_string_literal: true

class CatBreedController < ApplicationController
  def index
    @cat_breeds = CatBreed.all
  end

  def show
    @cat_breed = CatBreed.find(params[:id])
  end
end
