# frozen_string_literal: true

class CountryOrigin < ApplicationRecord
  validates :country_name, presence: true
  validates :abbreviation, presence: true
end
