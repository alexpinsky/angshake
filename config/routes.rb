Angshake::Application.routes.draw do
  root 'pages#sports_store'
  
  scope '/todo' do
    get '' => 'pages#todo'
    get 'items' => 'pages#items'
  end

  scope '/sports_store' do
    get '' => 'pages#sports_store'
    resources :categories do
      resources :products
    end
    resources :products
    resources :orders
  end

  scope '/sports_store_admin' do
    get '' => 'pages#sports_store_admin'
    resources :products
    resources :orders
  end

  scope '/example_app' do
    get '' => 'pages#example_app'
  end

  resources :users do
    collection do
      post 'login'
    end
  end
end
