class ItemsController < ApplicatoinController

  def item_params
    params.require(:item).permit(
      :name,
      :description
    )
  end

end
