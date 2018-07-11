class Equipment < ApplicationRecord
  has_many :equipment_connections
  has_many :exercises, through: :equipment_connections
end
