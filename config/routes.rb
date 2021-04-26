Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/', to: 'flats#index', as: :root
  root to: 'flats#index'

  get '/flats/:id', to: 'flats#show', as: :flat

  # 'https://www.airbnb.fr/rooms/25247659'
  # verb "url", to: "controller#action"
end
