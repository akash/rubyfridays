Testapp::Application.routes.draw do

  match "/" => "home#index", :via => "get"
  match "/sayhello" => "home#sayhello", :via => "get"
  
  match "/sayhello/to/:name" => "say_hello#say_hello_to"
  
  match "/sayhello/formtest" => "say_hello#formtest", :via => "get"
  match "/sayhello/dosomething" => "say_hello#dosomething", :via => "post"

  # STEP 1: tell your application which url should go to which
  # peice of code (config/routes.rb)

  # STEP 2: create controller with matching name for your route
  # e.g. home#index == home_controller.rb in app/controllers
  # and inside the file have: 
  # class HomeController < ApplicationController

  # STEP 3: create a folder in views that matches controller name
  # e.g. /views/home

  # STEP 4: create a file inside this new folder that matches
  # your function name: 
  # e.g. home#index == /views/home/index.html.erb

  # STEP 5: add code to html with: <%=...%> & <%...%>
  # STEP 6: share between controller/view with @




  # resources :cds

  # match "/cds" => "cds#index", :via => "GET", :as => "cds" 
  # match "/cds/new" => "cds#new", :via => "GET", :as => "new_cd"
  # match "/cds" => "cds#create", :via => "POST"
  # match "/cds/:id" => "cds#show", :via => "GET", :as => "cd" # cd_path(:id => "123"), cd_path(@cd)
  # match "/cds/:id/edit" => "cds#edit", :via => "GET", :as => "edit_cd"
  # match "/cds/:id" => "cds#update", :via => "PUT"
  # match "/cds/:id" => "cds#destroy", :via => "DELETE"

  # rails generate migration "filename"
  # rake routes
  # rake db:migrate / db:create / db:drop / db:reset / db:rollback
end