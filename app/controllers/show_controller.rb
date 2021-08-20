class ShowController < ApplicationController

def show_type
  the_type = params.fetch("type") 

  all_cards = Pokemon::Card

  if the_type == "Trainer"

    @list_of_cards = all_cards.where(q: "supertype:#{the_type}")

  elsif the_type == "Energy"
    @list_of_cards = all_cards.where(q: "supertype:#{the_type}")
    
  else

    @list_of_cards = all_cards.where(q: "types:#{the_type}")
    
  end

  render({ :template => "show/type_show.html.erb" })

  
end



def setlist
  the_set = params.fetch("set")

 
  
  all_cards = Pokemon::Card

  @setlist = all_cards.where(q: "set.id:#{the_set}")

  render({ :template => "show/setlist.html.erb" })


end


  
end