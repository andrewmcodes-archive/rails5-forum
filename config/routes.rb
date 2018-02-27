# == Route Map
#
#          Prefix Verb   URI Pattern                        Controller#Action
#            root GET    /                                  discussions#index
#     discussions GET    /discussions(.:format)             discussions#index
#                 POST   /discussions(.:format)             discussions#create
#  new_discussion GET    /discussions/new(.:format)         discussions#new
# edit_discussion GET    /discussions/:id/edit(.:format)    discussions#edit
#      discussion GET    /discussions/:id(.:format)         discussions#show
#                 PATCH  /discussions/:id(.:format)         discussions#update
#                 PUT    /discussions/:id(.:format)         discussions#update
#                 DELETE /discussions/:id(.:format)         discussions#destroy
#         sign_in GET    /auth/:provider/callback(.:format) sessions#new
#        sign_out GET    /auth/sign-out(.:format)           sessions#sign_out
#  twitter_signin GET    /auth/twitter(.:format)            sessions#twitter_signin
# 

Rails.application.routes.draw do
  root to: 'discussions#index'
  resources :discussions
  get '/auth/:provider/callback' => 'sessions#new', as: :sign_in
  get '/auth/sign-out' => 'sessions#sign_out', as: :sign_out
  get '/auth/twitter' => 'sessions#twitter_signin', as: :twitter_signin
end
