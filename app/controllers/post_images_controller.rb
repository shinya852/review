class PostImagesController < ApplicationController

  def new#新規作成既往
    @post_image = PostImage.new
  end

  def create#保存機能
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id#ログイン中のユーザ機能を習得
    @post_image.save
    redirect_to post_images_path
  end

  def index
    @post_images = PostImage.all
  end

  def show
    @post_image = PostImage.find(params[:id])
    #@post_comment = PostComment.new
    @post_comment = PostComment.new
  end

  def destroy
    @post_image = PostImage.find(params[:id])
    @post_image.destroy
    redirect_to post_images_path
  end

  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
end
