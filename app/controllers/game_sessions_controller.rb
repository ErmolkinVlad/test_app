class GameSessionsController < ApplicationController

  def show
    @game = GameSession.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @game = GameSession.new
  end

  def create
    @game = User.find(params[:user_id]).game_sessions.new(game_session_params)
    @game.score = 0
    @game.save
    redirect_to user_game_session_path(params[:user_id], @game)
  end

  def play
    @game = GameSession.find(params[:game_session_id])
    @game.score += 1
    @game.save
    respond_to do |format|
      format.js {}
    end
  end

  private

  def game_session_params
    params.require(:game_session).permit(:name)
  end

end
