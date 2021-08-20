class HomeController < ApplicationController

def index

  all_sets = Pokemon::Set.all

  @types = Pokemon::Type.all

  @list_of_sets = all_sets

  @supertypes = Pokemon::Supertype.all



  render({ :template => "home/index.html.erb" })

  
end

def search

@set_id = params.fetch("query_set_id")
@supertype = params.fetch("query_type_id")

all_cards = Pokemon::Card

@search_results = all_cards.where(q: "set.id:#{@set_id} supertype:#{@supertype}")

render({ :template => "home/search.html.erb" })


end

def name

name = params.fetch("query_name")
split_name = name.split

all_cards = Pokemon::Card

if split_name.second == nil

@search_results = all_cards.where(q: "name:"+"#{name}")

else
first = split_name.first
second = split_name.second
@search_results = all_cards.where(q: "name:#{first} name:#{second}")
end


render({ :template => "home/search.html.erb" })

end
  
end