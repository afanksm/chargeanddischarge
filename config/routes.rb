Rails.application.routes.draw do

    get "/" => "floors#index"
    get "/floors" => 'floors#index'
    get "/floors/:id" => 'floors#details'
    
    get "/outlets" => 'outlets#index'
    get "/outlets/:id/delete"=> 'outlets#destroy'
    get "/outlets/:id/edit"=> 'outlets#edit'
    get "/outlets/:id/update"=> 'outlets#update'
    get "/outlets/new" =>'outlets#new'
    get "/outlets/create" => 'outletscreate'
    
    get "/bathrooms/:id/delete" => 'bathrooms#destroy'
    get "/bathrooms/:id/edit"=> 'bathrooms#edit'
    get "/bathrooms/:id/update"=> 'bathrooms#update'
    get "/bathrooms" => 'bathrooms#index'
    get "/bathrooms/new"=> 'bathrooms#new'
    get "/bathrooms/create" => 'bathrooms#create'
    
    get "/users/new"=> 'users#new'
    get "/users/create"=> 'users#create'
    
    get "/login" => 'sessions#new'
    get "/logout"=> 'sessions#destroy'
    get "/sessions/create"=> 'sessions#create'
    
end
