class PokemonsController < ApplicationController
    def index
        @pokemons = Pokemon.all
    end

    def new
        @pokemon = Pokemon.new
    end

    def show
        @pokemon = Pokemon.find(params[:id])
    end

    def create
        @pokemon = Pokemon.create(pokemon_params)
        @pokemon.save
        redirect_to pokemon_path(@pokemon)
    end


    private

    def pokemon_params
        params.require(:pokemon).permit(:name, :image)
    end
end
