class ReplyController < ApplicationController
  def create
    @reply =Reply.new
    @reply.content =params[:content]
    @reply.post_id=params[:id]
    @reply.user_id=current_user.id
    @reply.save
    
    redirect_to '/post/view/' + params[:id]
  end

  def destroy
    @reply =Reply.find(params[:id])
    
    
    if current_user.id==@reply.user.id
      @reply.destroy  
      redirect_to '/post/view/' + @reply.post_id.to_s
    else
      redirect_to '/post/error'
    end
    
  end
end
