json.id exercise.id
json.name exercise.name
json.description exercise.description
json.image_url exercise.image_url

json.equipments do
  json.array! exercise.equipments, partial: "api/equipments/equipment", as: :equipment   
end