class BoardCommentsController < ApplicationController
  def add
    board = BoardComment.new(board_comment_params)
    board.user_id = current_user.id
    board.community_id = params[:id]
    if board.save
    flash[:notice] = "掲示板に投稿しました"
    redirect_to community_show_path(params[:id])
    else
    flash[:notice] = "エラー：入力に誤りがあります"
    redirect_to community_show_path(params[:id])
    end
  end

  def delete
    boardcomment = BoardComment.find_by(id: params[:board_comment_id])
    boardcomment.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to community_show_path(params[:id])
  end


  private
  def board_comment_params
    params.require(:board_comment).permit(:comment)
  end
end