class Owner < ApplicationRecord

  validates :nicknmae, presence: true, uniqiueness :true
end
