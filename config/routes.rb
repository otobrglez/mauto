Mauto::Application.routes.draw do

  root :to => "cars#index"

  resources :cars, :only => [:show] do
    post 'decide', :on => :collection
  end

end
