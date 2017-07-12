class Api::PokemonController < ApplicationController

  def index
    @pokemons = Pokemon.all.includes(:items)
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:name, :attack, :defense, :poke_type, :moves)
  end


end
