class HomeController < ApplicationController

def index

  all_sets = Pokemon::Set.all

  @types = Pokemon::Type.all

  @list_of_sets = all_sets
  
  render({ :template => "home/index.html.erb" })

  
end


  
end