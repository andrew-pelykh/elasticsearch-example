Rails.application.routes.draw do
  root "search#search"

  get '/search' => 'search#search', as: :search
end
