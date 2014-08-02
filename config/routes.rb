Angshake::Application.routes.draw do
  root 'pages#index'
  get 'items' => 'pages#items'
end
