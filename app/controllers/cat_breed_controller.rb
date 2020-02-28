# frozen_string_literal: true

class CatBreedController < ApplicationController
  def index
    @breeds = CatBreed.all
  end

  def show
    @breed = CatBreed.find(params[:id])
  end
end
