# frozen_string_literal: true

class TempermentController < ApplicationController
  def index
    @temperaments = Temperament.all
  end

  def show
    @temperament = Temperament.find(params[:id])
  end
end
