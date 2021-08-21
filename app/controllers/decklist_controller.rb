class DecklistController < ApplicationController

def view

  render({ :template => "decklist/view.html.erb" })

end



def add

  the_decklist = Decklist.new
  the_decklist.user_id = session.fetch( :user_id)
  the_decklist.card_id = params.fetch("query_card_id")
  the_decklist.quantity = params.fetch("query_quantity")

  if the_bookmark.valid?
    the_bookmark.save
    redirect_to("/bookmarks", { :notice => "Card added to Decklist" })
  else
    redirect_to("/bookmarks", { :notice => "Card was not able to be added to Decklist. Try again" })
  end

end






end