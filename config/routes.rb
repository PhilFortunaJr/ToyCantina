Rails.application.routes.draw do
  resources :products
  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/orders'
  get 'simple_pages/landing_page'
  root 'simple_pages#landing_page'
  resources :orders, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'simple_pages/thank_you'
end


# redo simple pages index
# note some of it is done already so localhost will not work
# be careful what gets deleted
# can go on nameofapp to reset app.html.erb and this page
# May the force be with you
