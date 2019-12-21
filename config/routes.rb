Rails.application.routes.draw do
  # ユーザーの一覧表示
  get '/users', to: "users#index"
  # ユーザーの詳細表示
  get '/user/:id', to: "users#show"
  # 新規登録フォーム
  get '/users/new', to: "users#new"
  # ユーザーの登録
  post '/users', to: "users#create"
  # ユーザーの更新ページ
  get '/users/:id/edit', to: "users#edit"
  # ユーザーの更新
  patch '/users/:id', to: "users#update"
  # ユーザーの削除
  delete '/users/:id', to: "users#destroy"

  resources :users
end
