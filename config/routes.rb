Rails.application.routes.draw do
  resources :products
  get 'simple_pages/index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  root 'simple_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end




# redo simple pages index
# note some of it is done already so localhost will not work
# be careful what gets deleted
# can go on nameofapp to reset app.html.erb and this page
# May the force be with you
