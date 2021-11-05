class PostImage < ApplicationRecord
  belongs_to :user
  attachment :image#画像投稿の指定
end
