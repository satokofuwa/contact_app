Rails.application.routes.draw do

  resources :contacts do
    collection do
      get :new
    end
  end
end

