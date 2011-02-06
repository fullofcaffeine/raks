class GamesController < ApplicationController
  def new
    @game = Game.new
    @gesture = Gesture.new
  end

  def create
    @game = Game.new(params[:game])
    @game.save
    redirect_to game_path(@game)
  end

  def show
    debugger
    @game = Game.find(params[:id])
  end
end

