class Book < ApplicationRecord
  has_many :publishers
  has_many :authors, through: :publishers, dependent: :destroy
end
