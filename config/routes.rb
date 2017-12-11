Rails.application.routes.draw do
  # get 'questions/index'
  #
  # get 'questions/show'
  #
  # get 'questions/new'
  #
  # get 'questions/edit'

  resources :questions

  # get 'advertisements/index'
  #
  # get 'advertisements/show'
  #
  # get 'advertisements/new'
  #
  # get 'advertisements/create'
    resources :advertisements
    resources :posts

    get 'about' => 'welcome#about'

    root 'welcome#index'

end
