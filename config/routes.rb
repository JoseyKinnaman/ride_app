Rails.application.routes.draw do
  resources :drivers, only: [] do
    # /drivers/:driver_id/rides
    resources :rides, only: :index
  end
end
