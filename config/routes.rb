Rails.application.routes.draw do
root to: "lists#index"
resources :lists, except: [:edit, :update ] do
resources :bookmarks, only: [:new, :create]

end
resources :bookmars, only: [:destroy]
end
# write me the routes for all the controllers and views
