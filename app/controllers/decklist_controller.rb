class DecklistController < ApplicationController

def view

if session.fetch( :user_id) == nil

  redirect_to("/", { :alert => "Must be logged in to access decklists" })

else

the_id = session.fetch( :user_id)
 @decklist = Decklist.all 

@matching_decklist = Decklist.where({ :user_id => the_id })

@all_cards = Pokemon::Card

  render({ :template => "decklist/view.html.erb" })

end
end 



def add

  the_decklist = Decklist.new
  the_decklist.user_id = session.fetch( :user_id)
  the_decklist.card_id = params.fetch("query_card_id")
  the_decklist.quantity = params.fetch("query_quantity")  
  the_decklist.save


  #if the_decklist.valid?
    #the_decklist.save
  redirect_to("/decklist", { :notice => "Card added to Decklist" })
  #else
    #redirect_to("/sets", { :notice => "Card was not able to be added to Decklist. Try again" })
  #end

end

  def remove
    dc_id = params.fetch("dc_id")
    user_id = session.fetch( :user_id)
    removing_card = Decklist.where({ :id => dc_id }).at(0)

    removing_card.destroy

    redirect_to("/decklist", { :notice => "Card removed from decklist."} )
  end





end