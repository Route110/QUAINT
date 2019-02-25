class CommunitiesController < ApplicationController
before_action :authenticate_user!, :only => [:show, :index]
  def index
    @hobby = Hobby.find(params[:id])
    @communities = Community.where(hobby_id: @hobby.id).page(params[:page]).per(10)
  end

  def new
    @hobby = Hobby.find(params[:id])
    @community = Community.new
  end

  def create
    hobby = Hobby.find(params[:id])
    community = Community.new(community_params)
    community.hobby_id = hobby.id
    community.user_id = current_user.id
    if community.save
      flash[:notice] = "チャレンジを追加しました"
      redirect_to community_index_path(hobby)
    else
      flash[:notice] = "エラー：入力に誤りがあります"
      redirect_to community_new_path
    end
  end

  def delete
    community = Community.find(params[:community_id])
    uc = UsersCommunity.where(community_id: community.id)
    if community.destroy
      uc.each do |uc|
        uc.destroy
      end
      flash[:notice] = "趣味を削除しました"
      redirect_to community_index_path
    else
      flash[:notice] = "趣味の削除に失敗しました"
      redirect_to community_index_path
    end
  end

  def show
    @community = Community.find(params[:id])
    @boards = BoardComment.where(community_id: @community.id).order(id: "ASC").page(params[:page]).per(20)
    @board = BoardComment.new
  end

  def add
    community = Community.find(params[:id])
    user = current_user
    uc = UsersCommunity.new
    uc.user_id = user.id
    uc.community_id = community.id
    if uc.save
      flash[:notice] = "チャレンジに追加しました"
      redirect_to community_show_path
    else
      flash[:notice] = "エラー：ログインしてください"
      redirect_to community_show_path
    end
  end

  private
  def community_params
    params.require(:community).permit(:hobby_id, :name, :level, :introduction)
  end
end
