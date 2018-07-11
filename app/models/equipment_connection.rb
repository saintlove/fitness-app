class EquipmentConnection < ApplicationRecord
  belongs_to :exercise
  belongs_to :equipment
end
