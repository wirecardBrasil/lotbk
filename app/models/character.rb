class Character < ApplicationRecord
  belongs_to :inventory
  has_one :current_stat
end
