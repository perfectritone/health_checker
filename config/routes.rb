Rails.application.routes.draw do
  post :status, to: 'status#update'
  get :status_history, to: 'status_history#show'
end
