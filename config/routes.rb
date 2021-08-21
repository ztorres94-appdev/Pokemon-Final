Rails.application.routes.draw do

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

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


#User Login

get("/sign_up", { :controller => "user_authentication", :action => "sign_up" })

get("/sign_in", { :controller => "user_authentication", :action => "login" })

get("/sign_out", { :controller => "user_authentication", :action => "goodbye" })

   # CREATE RECORD
   post("/insert_user", { :controller => "user_authentication", :action => "create"  })
  # AUTHENTICATE AND STORE COOKIE
    post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })


#Decklists

get("/decklist", { :controller => "decklist", :action => "view" })

post("/insert_card", { :controller => "decklist", :action => "add" })

get("/remove_card/:dc_id", { :controller => "decklist", :action => "remove" })

end
