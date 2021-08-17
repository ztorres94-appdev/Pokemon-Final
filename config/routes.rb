Rails.application.routes.draw do

# Homepage

get("/", { :controller => "home", :action => "index" })


#Choose
get("/sets", { :controller => "choose", :action => "sets" })

get("/cards", { :controller => "choose", :action => "card" })

get("/types", { :controller => "choose", :action => "type" })

#Show
get("/types/:type", { :controller => "show", :action => "show_type" })


end
