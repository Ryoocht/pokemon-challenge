require 'rest-client'
require 'json'

def get_pokemon(id)
  response = RestClient.get("https://pokeapi.co/api/v2/pokemon/#{id}")
  JSON.parse(response)
end

pikachu_data = get_pokemon(1)
Pokemon.create(name: pikachu_data["name"], image: pikachu_data["sprites"]["front_default"])

ivysaur_data = get_pokemon(2)
Pokemon.create(name: ivysaur_data["name"], image: ivysaur_data["sprites"]["front_default"])
