class ChooseController < ApplicationController

  ####### Search by Sets
def sets

  all_sets = Pokemon::Set.all

  @types = Pokemon::Type.all

  @list_of_sets = all_sets

  render({ :template => "choose/sets.html.erb" })
end


####### Search by Card Name

def card

  all_cards = Pokemon::Card

  @cards = all_cards.where(q: 'name:Zacian' )




  render({ :template => "choose/card.html.erb" })
end


##### Search by Type

def type

  @types = Pokemon::Type.all
  
  @supertypes = Pokemon::Supertype.all

  

  render({ :template => "choose/type.html.erb" })
end


end