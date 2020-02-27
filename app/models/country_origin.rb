# frozen_string_literal: true

class CountryOrigin < ApplicationRecord
  validates :name, presence: true
  validates :abbriviation, presence: true
end
