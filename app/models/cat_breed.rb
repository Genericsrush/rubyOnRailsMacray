# frozen_string_literal: true

class CatBreed < ApplicationRecord
  belongs_to :country_origin
  has_many :cats
  validates :breed_name, presence: true
  validates :age_range, presence: true
end
