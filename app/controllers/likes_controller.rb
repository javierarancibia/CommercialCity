class LikesController < ApplicationController
    before_action :find_estate
    before_action :find_like, only: [:destroy]

    def create
        if already_liked?
            flash[:notice] = "Ya esta interesado en esta propiedad"
        else
            @estate.likes.create(user_id: current_user.id)
        end
            redirect_to estate_path(@estate)
    end

    def destroy
        if !(already_liked?)
          flash[:notice] = "No se puede desinteresar"
        else
          @like.destroy
        end
        redirect_to estate_path(@estate)
    end

    private
    def find_estate
        @estate = Estate.find(params[:estate_id])
    end

    def already_liked?
        Like.where(user_id: current_user.id, estate_id: params[:estate_id]).exists?
    end

    def find_like
        @like = @estate.likes.find(params[:id])
     end
end
