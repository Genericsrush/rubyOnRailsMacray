# frozen_string_literal: true

class CatBreedController < ApplicationController
  def index
    @breeds = Cat_breed.all
  end

  def show
    @breed = Cat_breed.find(params[:id])
  end
end
