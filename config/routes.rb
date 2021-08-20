Rails.application.routes.draw do

# Homepage

get("/", { :controller => "home", :action => "index" })

get("/search", { :controller => "home", :action => "search" })

get("/name", { :controller => "home", :action => "name" })

#Choose
get("/sets", { :controller => "choose", :action => "sets" })

get("/cards", { :controller => "choose", :action => "card" })

get("/types", { :controller => "choose", :action => "type" })

#Show
get("/types/:type", { :controller => "show", :action => "show_type" })

get("/sets/:set", { :controller => "show", :action => "setlist" })

#Info

get("/pokemon/:id", { :controller => "view", :action => "card_info" })



end
