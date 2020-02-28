# frozen_string_literal: true

class CountryOrigin < ApplicationRecord
  has_many :cat_breed
  validates :name, presence: true
  validates :abbriviation, presence: true
end
