class ChatsController < ApplicationController
  before_action :require_login
  def create
    @group = Group.find(params[:group_id])
    @chat = @group.chats.new(chat_params)
    @chat.user_id = current_user.id
    if @chat.save
      redirect_to request.referer
    else
      @group_new = Group.new
      @comments = @post.comments
      render 'groups/show'
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:chat)
  end
end
