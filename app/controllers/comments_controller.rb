class CommentsController < ApplicationController
    before_action :authenticate_user!, except: [:index]

    def create
        @comment = current_user.posts.comments.new(post_params)

        respond_to do |format|
        if @comment.save
            format.html { redirect_to post_url(@comment), notice: "Post was successfully created." }
            format.json { render :show, status: :created, location: @comment }
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
        end
    end

    private

    def post_params
        params.require(:comment).permit(:text, :user_id, :post_id)
    end
end
