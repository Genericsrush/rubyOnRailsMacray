# frozen_string_literal: true

class Temperament < ApplicationRecord
  has_many :cat_temps
  has_many :cats, through: :cat_temps
  validates :behavour, presence: true
  validates :description, presence: true
end
