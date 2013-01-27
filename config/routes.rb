Store::Application.routes.draw do
  resources :products do 
    resources :variantes
  end

 
end
