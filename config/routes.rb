AdoptAThing::Application.routes.draw do
  devise_for :users, :controllers => {
    :passwords => 'passwords',
    :registrations => 'users',
    :sessions => 'sessions',
  }

  get 'address' => 'addresses#show', :as => 'address'
  get 'info_window' => 'info_window#index', :as => 'info_window'
  get 'status/info' => 'statuses#info', :as => 'status/info'
  get 'status/list' => 'statuses#list', :as => 'status/list'
  get 'sitemap' => 'sitemaps#index', :as => 'sitemap'
  get 'javascripts/main(.:format)' => 'javascripts#main', :as => 'javascript'
  
  scope "sidebar", :controller => :sidebar do
    get :search, :as => 'search'
    get :combo_form, :as => 'combo_form'
    get :edit_profile , :as => 'edit_profile'
  end

  resource :reminders
  resource :things
  resource :status
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  get 'reports' => 'main#index'
  root :to => 'main#index'
end
