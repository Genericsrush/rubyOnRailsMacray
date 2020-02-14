class CatBreed < ApplicationRecord
  belongs_to :country_origin
  belongs_to :lifespan
  has_many :cats
end
