# frozen_string_literal: true

class Cat < ApplicationRecord
  belongs_to :cat_breed
  belongs_to :cat_temp
  validates :name, presence: true
  validates :shots, presence: true
end
