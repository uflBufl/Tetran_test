Rails.application.routes.draw do
  # root 'application#hello'
  root             'customers#home'
  get 'black'    => 'customers#black'
  post 'black' => 'customers#black_true'
  delete 'black' => 'customers#black_false'
  delete 'black/home' => 'application#home_true'
end
