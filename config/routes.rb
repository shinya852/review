Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do#←親要素の為doを追加
  #今回は画像投稿に対してコメントをつけるのでpost_image直下に作成
    resources :post_comments, only: [:create, :destroy]
  end

end
