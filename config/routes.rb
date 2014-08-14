Angshake::Application.routes.draw do
  root 'pages#sports_store'
  
  scope '/todo' do
    get '' => 'pages#todo'
    get 'items' => 'pages#items'
  end

  resources :categories do
    resources :products
  end
  resources :products
  resources :orders
end
