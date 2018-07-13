class Exercise < ApplicationRecord
  has_many :equipment_connections
  has_many :equipments, through: :equipment_connections


  def self.find_checked(checked_json_params)
    ruby_hash = JSON.parse(checked_json_params)

    ids = []

    ruby_hash.each do |key, value|
      if value
        ids << key.to_i
      end
    end

    collected_exercises = []

    Equipment.where(id: ids).each do |equipment|
      collected_exercises << equipment.exercises
    end

    collected_exercises.flatten!.uniq
  end

end
