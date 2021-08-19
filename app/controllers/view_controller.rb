class ViewController < ApplicationController

def card_info

  card_id = params.fetch("id")

 
  all_cards = Pokemon::Card

  the_card = all_cards.where(q: "id:#{card_id}")
  
  @card = the_card.at(0)


  render({ :template => "view/card_info.html.erb" })


end








end