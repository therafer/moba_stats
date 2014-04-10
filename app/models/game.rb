class Game < ActiveRecord::Base

  def items
    item_info
  end

   def heros
    hero_info["result"]["heroes"]
  end

  def hero_response
    @hero_response ||= Faraday.get('http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v1?key=CC297501D212E84656F40481FABF1A3C').body
  end

  def hero_info
    JSON.parse(hero_response)
  end

  def item_response
    @item_response ||= File.read('app/assets/items.json')
  end

  def item_info
    JSON.parse(item_response)
  end

end
