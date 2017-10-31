class CommentsController < ApplicationController
    def create
        @idol = Idol.find(params[:idol_id])
        @comment = @idol.comments.create(comment_params)
        redirect_to @idol, :notice => "Comment created!"
    end
    
    private 
    def comment_params
        params.require(:comment).permit(:name, :content)
    end
    #   params.require(:idol).permit(:name, :age, :test)
end
