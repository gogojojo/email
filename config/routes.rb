Rails.application.routes.draw do
get '/' => 'application#index' 
resources :employers
end
