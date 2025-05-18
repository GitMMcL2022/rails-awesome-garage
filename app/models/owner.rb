class Owner < ApplicationRecord
#Validation for Owner has car and only they own the car.
  validates :nickname, presence: true, uniqueness: true
end
