Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      get 'days/:day_number/activities', to: 'days#activities'
      get 'days/:day_number/completed_activities', to: 'days#completed_activities'
      post 'user_activities', to: 'user_activities#create'
    end
  end
  
  
end
