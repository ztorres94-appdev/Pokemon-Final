class ShowController < ApplicationController

def show_type
  the_type = params.fetch("type") 

  all_cards = Pokemon::Card

  @list_of_cards = all_cards.where(q: "supertype:#{the_type}")

  render({ :template => "show/card_show.html.erb" })

  
end


  
end