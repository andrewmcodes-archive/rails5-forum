# == Route Map
#
#          Prefix Verb   URI Pattern                     Controller#Action
#     discussions GET    /discussions(.:format)          discussions#index
#                 POST   /discussions(.:format)          discussions#create
#  new_discussion GET    /discussions/new(.:format)      discussions#new
# edit_discussion GET    /discussions/:id/edit(.:format) discussions#edit
#      discussion GET    /discussions/:id(.:format)      discussions#show
#                 PATCH  /discussions/:id(.:format)      discussions#update
#                 PUT    /discussions/:id(.:format)      discussions#update
#                 DELETE /discussions/:id(.:format)      discussions#destroy
# 

Rails.application.routes.draw do
  root to: 'discussions#index'
  resources :discussions
  get '/auth/:provider/callback' => 'sessions#new'
end
