class UsersController < ApplicationController
  #ユーザ一覧
  def show
     @user = User.find(params[:id])
     @post_images = @user.post_images.page(params[:page]).reverse_order
  end
  #ユーザ修正
  def edit
    @user = User.find(params[:id])
  end
  #ユーザ更新
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  #プライベート
  private
  #パラメータ
  
  def user_params
    params.require(:user).permit(:nickname, :profile_image)
  end
  
end
