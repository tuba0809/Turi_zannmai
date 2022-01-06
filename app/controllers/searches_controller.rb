class SearchesController < ApplicationController
  #検索機能
    def search
        @range = params[:range]
        search = params[:search]
        @word = params[:word]
        #検索
        if @range == '1'
        @user = User.search(search,@word)
        else
        @post_image = Post_image.search(search,@word)
        end
    end
    
end
