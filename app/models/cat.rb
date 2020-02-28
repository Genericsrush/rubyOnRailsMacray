# frozen_string_literal: true

class Cat < ApplicationRecord
  has_many :cat_temps
  has_many :temperaments, through: :cat_temps
  belongs_to :cat_breed
  validates :name, presence: true
  validates :shots, presence: true
end
