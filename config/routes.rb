Rails.application.routes.draw do
  root 'game#index'
  match '/throw', to: 'game#throw', via: :post
end
