Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#  resources :movies, only: [:new, :create, :index, :destroy, :show, :edit, :update, :destroy] do

resources :lists, only: [:new, :create, :index, :show] do
  resources :bookmarks, only: [:edit, :update, :show, :destory]
end
end

