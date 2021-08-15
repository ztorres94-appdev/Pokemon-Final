Rails.application.routes.draw do

# Homepage
get("/", { :controller => "home", :action => "index" })


get("/card", { :controller => "home", :action => "card" })


end
