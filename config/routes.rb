Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do#←親要素の為doを追加
  #idの受け渡しが必要ない為
    resource :favorites, only: [:create, :destroy]
  #今回は画像投稿に対してコメントをつけるのでpost_image直下に作成
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edi, :update]


end
