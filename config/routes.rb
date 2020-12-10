Rails.application.routes.draw do
  namespace :api, defaults: {formt: 'json'} do
    namespace :v1 do
      resources :ufs, only: [] do
        collection do
          get 'by_date/:date', to: 'ufs#by_date'
        end
      end
      resources :clients, only: [] do
        collection do
          get 'by_name/:name', to: 'clients#by_name' 
        end
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
