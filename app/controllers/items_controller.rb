class ItemsController < ApplicationController

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update_attributes(item_params)

    redirect_to game_path(@item.game)
  end

  def create
    @game = Game.find(params[:game_id])
    @item = @game.items.new(item_params)

    if @item.save
      redirect_to game_path(@game)
    end
  end

  def item_params
    params.require(:item).permit(
      :name,
      :description
    )
  end

end
