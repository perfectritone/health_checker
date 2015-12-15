Rails.application.routes.draw do
  post :status, to: 'status#update'
end
