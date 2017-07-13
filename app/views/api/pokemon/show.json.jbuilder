
json.poke do
  json.extract! @pokemon, :id, :name, :attack, :defense, :moves, :poke_type
  json.image_url image_path(@pokemon.image_url)
end

json.items do
  json.array! @pokemon.items do |item|
    json.id item.id
    json.name item.name
    json.pokemon_id item.pokemon_id
    json.price item.price
    json.happiness item.happiness
    json.image_url image_path(item.image_url)
  end
end

# @pokemon.items.each do |item|
#   json.items do
#     json.id @pokemon.items.id
#     json.name @pokemon.items.name
#     json.pokemon_id @pokemon.id
#     json.price @pokemon.items.price
#     json.happiness @pokemon.items.happiness
#     json.image_url image_path(@pokemon.items.image_url)
#   end
# end
