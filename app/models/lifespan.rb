# frozen_string_literal: true

class Lifespan < ApplicationRecord
  has_many :cat_breeds, :dog_breeds
end
