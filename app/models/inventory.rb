class Inventory < ApplicationRecord
  has_many :character
  has_many :items
end
