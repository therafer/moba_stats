class GamesController < ApplicationController

  def index
    @game = Game.new
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @hero = Hero.new(game_id: @game.id)
    @item = Item.new(game_id: @game.id)
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to games_path
    end
  end

   def update
     @game = Game.update(game_params, params[:name])

     redirect_to games_path
   end

  def game_params
    params.require(:game).permit(
      :name
    )
  end

end
