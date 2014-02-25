class HerosController < ApplicationController

  def edit
    @hero = Hero.find(params[:id])
  end

  def update
    @hero = Hero.find(params[:id])
    @hero.update_attributes(hero_params)

    redirect_to game_path(@hero.game)
  end

  def create
    @game = Game.find(params[:game_id])
    @hero = @game.heros.new(hero_params)

    if @hero.save
      redirect_to game_path(@game)
    end
  end

  def hero_params
    params.require(:hero).permit(
      :name,
      :stats
    )
  end

end
