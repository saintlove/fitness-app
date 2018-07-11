class Exercise < ApplicationRecord
  has_many :equipment_connections
  has_many :equipments, through: :equipment_connections
end
