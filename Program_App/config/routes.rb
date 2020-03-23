Rails.application.routes.draw do
  get '/' => "home#top" #トップページ

  get "post/create" => "post#create" #新規投稿ページビュー
  post "post/new" => "post#new" #新規投稿アクション

  get "user/login" => "user#login" #ログインページビュー
  post "user/login_action" => "user#login_action" #ログインアクション
  get "user/signup" => "user#signup" #新規ユーザ登録ページビュー
  post "user/new" => "user#new" #新規ユーザ登録アクション
  get "user/:id" => "user#show" #ユーザプロフィールページビュー
  get "user/:id/edit" => "user#edit" #ユーザ情報編集ページビュー
  post "user/:id/update" => "user#update" #ユーザ情報編集アクション

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
