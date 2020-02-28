# frozen_string_literal: true

class CountryOrigin < ApplicationRecord
  has_many :breeds
  validates :country_name, presence: true
  validates :abbreviation, presence: true
end
