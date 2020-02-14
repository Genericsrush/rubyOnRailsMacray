# frozen_string_literal: true

class DogBreed < ApplicationRecord
  belongs_to :country_origin
  belongs_to :lifespan
  has_many :dogs
end
