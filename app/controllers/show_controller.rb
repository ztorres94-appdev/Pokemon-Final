class ShowController < ApplicationController

def show_type
  the_type = params.fetch("type") 

  all_cards = Pokemon::Card

  @list_of_cards = all_cards.where(q: "supertype:#{the_type}")

  render({ :template => "show/card_show.html.erb" })

  
end

def setlist
  the_set = params.fetch("set")

 
  
  all_cards = Pokemon::Card

  @setlist = all_cards.where(q: "set.id:#{the_set}")

  render({ :template => "show/setlist.html.erb" })


end


  
end