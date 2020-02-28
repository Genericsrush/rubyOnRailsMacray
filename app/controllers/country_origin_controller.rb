# frozen_string_literal: true

class CountryOriginController < ApplicationController
  def index
    @countries = CountryOrigin.all
  end

  def show
    @country_origin = CountryOrigin.find(params[:id])
  end
end
