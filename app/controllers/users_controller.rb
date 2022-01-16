class UsersController < ApplicationController
  #Temporary suspensio
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page]).reverse_order
    #↑@userに関連された投稿のみを@post_imageに渡す=個人の投稿のみを表示させる. reverceは降順
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
