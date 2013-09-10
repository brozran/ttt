class GamesController < ApplicationController


  def reset
    @game = Game.find_by_id(params[:id])
    @game.s1 = nil
    @game.s2 = nil
    @game.s3 = nil
    @game.s4 = nil
    @game.s5 = nil
    @game.s6 = nil
    @game.s7 = nil
    @game.s8 = nil
    @game.s9 = nil
    @game.move = nil

    if @game.save
      redirect_to :back
    else
      render 'new'
    end

  end

  def update
    @game = Game.find_by_id(params[:id])


# REVEIVING PARAMS

      @game.s1 = params[:s1].
      @game.s2 = params[:s2].
      @game.s3 = params[:s3].
      @game.s4 = params[:s4].
      @game.s5 = params[:s5].
      @game.s6 = params[:s6].
      @game.s7 = params[:s7].
      @game.s8 = params[:s8].
      @game.s9 = params[:s9]
    @game.move = @game.move.to_i + 1


    if @game.save

      redirect_to :back
    else
      render 'new'
    end




  end
# END OF GAME


  def index
    @games = Game.all
  end

  def show
    @game = Game.find_by_id(params[:id])
  end

  def new
    @game = Game.new
    @game.save
    redirect_to game_url(@game)
  end

  def create

    @game.s1 = params[:s1]
    @game.s2 = params[:s2]
    @game.s3 = params[:s3]
    @game.s4 = params[:s4]
    @game.s5 = params[:s5]
    @game.s6 = params[:s6]
    @game.s7 = params[:s7]
    @game.s8 = params[:s8]
    @game.s9 = params[:s9]

    if @game.save
      redirect_to :back
    else
      render 'new'
    end
  end



  def edit
    @game = Game.find_by_id(nil)
  end


  def destroy
    @game = Game.find_by_id(params[:id])
    @game.destroy
    redirect_to games_url
  end
end
