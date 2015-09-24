json.array!(@doses) do |dose|
  json.extract! dose, :id, :description, :ingredient_id, :cocktail_id
  json.url dose_url(dose, format: :json)
end
