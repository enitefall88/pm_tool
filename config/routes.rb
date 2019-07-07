Rails.application.routes.draw do
get '/home', {to: 'homes#home', as: :root}
get '/about', {to: 'homes#about', as: :about}
resources :projects
end
