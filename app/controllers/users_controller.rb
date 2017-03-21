class UsersController < ApplicationController

  def index
    @users = User.all
    @best_games = User.all.map { |user| user.game_sessions.sort_by { |game| game.score }.reverse!.first }.compact.sort_by { |game| game.score }.reverse![0..4]
    
    # @best_games = User.all.map do |user|
    #   user.game_sessions.sort_by { |game| game.score }.reverse!.first
    # end.compact.sort_by { |game| game.score }.reverse![0..4]

  end

  def show
    @user = User.find(params[:id])
    @games = @user.game_sessions
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
