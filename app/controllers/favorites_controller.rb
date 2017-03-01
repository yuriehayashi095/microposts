class FavoritesController < ApplicationController
    before_action :logged_in_user
    
    def create
        @micropost = Micropost.find(params[:micropost_id])
        current_user.favorite(@micropost)
    end
    
    def destroy
        @favorite = Favorite.find(params[:id])
        @micropost = @favorite.favorite
        current_user.unfavorite(@micropost)
    end
end
