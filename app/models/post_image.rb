class PostImage < ApplicationRecord
  belongs_to :user
  attachment :image#画像投稿の指定
  has_many :post_comments, dependent: :destroy

end
