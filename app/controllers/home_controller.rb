class HomeController < ApplicationController

def index

  all_sets = Pokemon::Set.all
  @types = Pokemon::Type.all

  @list_of_sets = all_sets

  render({ :template => "home/index.html.erb" })
end

def card

  all_cards = Pokemon::Card

  @cards = all_cards.where(q: 'name:Zacian' )




  render({ :template => "home/card.html.erb" })
end

end