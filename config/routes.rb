Rails.application.routes.draw do
  devise_for :users
  
  get 'reply/create'
  post 'reply/create/:id' => 'reply#create'
   
  get 'reply/destroy'
  get 'reply/destroy/:id' => 'reply#destroy'

  root 'post#index'
  get 'post/index'

  get 'post/create'
  post 'post/create'
  
  get 'post/new'

  get 'post/error'
  
  get 'post/edit'
  get 'post/edit/:id' => 'post#edit'
  

  get 'post/update'
  post 'post/update/:id' =>'post#update'

  get 'post/destroy'
  get 'post/destroy/:id' => 'post#destroy'

  get 'post/view'
  get 'post/view/:id' => 'post#view'

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
