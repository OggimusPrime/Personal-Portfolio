Rails.application.routes.draw do

  get 'portfolio/index'

  root to: 'portfolio#index'

end
