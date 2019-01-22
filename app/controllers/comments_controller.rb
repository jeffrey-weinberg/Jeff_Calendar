class CommentsController < ApplicationController
    def create
        @event = Event.find(params[:event_id])
        @comment = @event.comments.create(comment_params)
        redirect_to event_path(@event)
    end

    def destroy
        @event = Event.find(params[:event_id])
        @comment = @event.comments.find(params[:id])
        
        if @comment.destroy
         flash[:success] = "Todo List item was deleted."
        else
         flash[:error] = "Todo List item could not be deleted."
        end
        redirect_to @event 
    end
     
    private
    def comment_params
        params.require(:comment).permit(:author, :body)
    end
end
