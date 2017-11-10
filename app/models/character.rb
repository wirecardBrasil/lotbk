class Character < ApplicationRecord
  has_many :inventory
  has_one :current_stat
end
