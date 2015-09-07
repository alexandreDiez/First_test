class PlayersController < ApplicationController

  def show
    @player = Player.find(params[:player])
  end

  def standing
    @players = Player.all
  end

  def create
    @player = Player.new(player_params)

    @player.save
    redirect_to @player
  end

  private
    def player_params
      params.require(:players).permit(:name, :age, :weight, :size, :position, :country )
    end

end
