class DogTemp < ApplicationRecord
  belongs_to :cat
  belongs_to :temperament
end
