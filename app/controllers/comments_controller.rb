class CommentsController < ApplicationController

    def create
        @profile = Profile.find(params[:profile_id])
        @comment = @profile.comments.build(comment_params)
        @comment.user_id = current_user.id
        if @comment.save
            redirect_to @profile
        else
            redirect_to @profile, notice: "No se guardo!"
        end
    end

    def destroy
    
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :rate)
    end
end
