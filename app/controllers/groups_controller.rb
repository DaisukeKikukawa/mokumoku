class GroupsController < ApplicationController
  before_action :require_login
  before_action :set_group, only: [:show, :destroy]
  before_action :ensure_correct_user, only: [:edit, :update]


  def index
    @groups = Group.all
  end

  def show
    @chat = Chat.new
    @chats = @group.chats.includes(:user)
  end

  def join
    @group = Group.find(params[:group_id])
    @group.users << current_user
    redirect_to  groups_path
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user.owner!
    @group.users << current_user
    if @group.save
      redirect_to groups_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to groups_path
    else
      render "edit"
    end
  end

  def destroy
    @group.users.delete(current_user)
    redirect_to groups_path
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end


  def group_params
    params.require(:group).permit(:name, :introduction)
  end

  def ensure_correct_user
    @group = Group.find(params[:id])
    unless @group.owner_id == current_user.id
      redirect_to groups_path, alert: "グループのオーナーではありません"
    end
  end
end
