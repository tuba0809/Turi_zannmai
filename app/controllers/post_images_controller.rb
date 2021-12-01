class PostImagesController < ApplicationController
  #記事投稿
  def new
     @post_image = PostImage.new
  end
#記事保存
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end
#記事一覧
  def index
    @post_images = PostImage.all
  end
#記事詳細
  def show
    @post_image = PostImage.find(params[:id])
    @post_comment = PostComment.new
  end
#記事削除
  def destroy
  end
  
  private

  def post_image_params
    params.require(:post_image).permit(:title, :image, :body, :tag_list)
  end
  
end
