Rails.application.routes.draw do
  get :banner, to: 'pages#banner'
  root to: 'pages#home'
end
