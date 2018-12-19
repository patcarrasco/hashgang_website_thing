class Author < ApplicationRecord
  has_many :publishers
  has_many :books, through: :publishers, dependent: :destroy
end
