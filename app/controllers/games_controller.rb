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

  if @game.s1.blank?
    @game.s1 = params[:s1]
  end
   if @game.s2.blank?
    @game.s2 = params[:s2]
  end
   if @game.s3.blank?
    @game.s3 = params[:s3]
  end
   if @game.s4.blank?
    @game.s4 = params[:s4]
  end
   if @game.s5.blank?
    @game.s5 = params[:s5]
  end
   if @game.s6.blank?
    @game.s6 = params[:s6]
  end
   if @game.s7.blank?
    @game.s7 = params[:s7]
  end
   if @game.s8.blank?
    @game.s8 = params[:s8]
  end
  if @game.s9.blank?
    @game.s9 = params[:s9]
  end

  @game.move = @game.move.to_i + 1

    @array = [@game.s1, @game.s2, @game.s3, @game.s4, @game.s5, @game.s6, @game.s7, @game.s8, @game.s9]

    if @game.move.to_i == 1
      if @array != ["", "", "", "", "x", "","","",""]
        @game.s5 = "o"
      else
        @game.s1 = "o"
      end

    elsif @game.move.to_i == 3
      # 2nd move response below

      # user went in middle first
      if @array == ["o", "x", "", "", "x", "","","",""]
        @game.s8 = "o"
      end
      if @array == ["o", "", "x", "", "x", "","","",""]
        @game.s7 = "o"
      end
      if @array == ["o", "", "", "x", "x", "","","",""]
        @game.s6 = "o"
      end
      if @array == ["o", "", "", "", "x", "x","","",""]
        @game.s4 = "o"
      end
      if @array == ["o", "", "", "", "x", "","x","",""]
        @game.s3 = "o"
      end
      if @array == ["o", "", "", "", "x", "","","x",""]
        @game.s2 = "o"
      end
      if @array == ["o", "", "", "", "x", "","","","x"]
        @game.s3 = "o"
      end

      # user went in top left first
      if @array == ["x", "x", "", "", "o", "","","",""]
        @game.s3 = "o"
      end
      if @array == ["x", "", "x", "", "o", "","","",""]
        @game.s2 = "o"
      end
      if @array == ["x", "", "", "x", "o", "","","",""]
        @game.s7 = "o"
      end
      if @array == ["x", "", "", "", "o", "x","","",""]
        @game.s3 = "o"
      end
      if @array == ["x", "", "", "", "o", "","x","",""]
        @game.s2 = "o"
      end
      if @array == ["x", "", "", "", "o", "","","x",""]
        @game.s3 = "o"
      end
      if @array == ["x", "", "", "", "o", "","","","x"]
        @game.s2 = "o"
      end

      # user went top middle first
      if @array == ["", "x", "x", "", "o", "","","",""]
        @game.s1 = "o"
      end
      if @array == ["", "x", "", "x", "o", "","","",""]
        @game.s1 = "o"
      end
      if @array == ["", "x", "", "", "o", "x","","",""]
        @game.s3 = "o"
      end
      if @array == ["", "x", "", "", "o", "","x","",""]
        @game.s1 = "o"
      end
      if @array == ["", "x", "", "", "o", "","","x",""]
        @game.s1 = "o"
      end
      if @array == ["", "x", "", "", "o", "","","","x"]
        @game.s1 = "o"
      end

      # user went top right first
      if @array == ["", "", "x", "x", "o", "","","",""]
        @game.s1 = "o"
      end
      if @array == ["", "", "x", "", "o", "x","","",""]
        @game.s9 = "o"
      end
      if @array == ["", "", "x", "", "o", "","x","",""]
        @game.s2 = "o"
      end
      if @array == ["", "", "x", "", "o", "","","x",""]
        @game.s1 = "o"
      end
      if @array == ["", "", "x", "", "o", "","","","x"]
        @game.s6 = "o"
      end

      # user went middle left first
      if @array == ["", "", "", "x", "o", "x","","",""]
        @game.s1 = "o"
      end
      if @array == ["", "", "", "x", "o", "","x","",""]
        @game.s1 = "o"
      end
      if @array == ["", "", "", "x", "o", "","","x",""]
        @game.s1 = "o"
      end
      if @array == ["", "", "", "x", "o", "","","","x"]
        @game.s3 = "o"
      end

      # user went middle right first
      if @array == ["", "", "", "", "o", "x","x","",""]
        @game.s1 = "o"
      end
      if @array == ["", "", "", "", "o", "x","","x",""]
        @game.s1 = "o"
      end
      if @array == ["", "", "", "", "o", "x","","","x"]
        @game.s3 = "o"
      end
      # user went bottom left first
      if @array == ["", "", "", "", "o", "","x","x",""]
        @game.s9 = "o"
      end
      if @array == ["", "", "", "", "o", "","x","","x"]
        @game.s8 = "o"
      end
      # user went bottom middle first
      if @array == ["", "", "", "", "o", "","","x","x"]
        @game.s7 = "o"
      end

    elsif @game.move.to_i == 5
      # 3rd move response below
      # user went in middle first top middle second
      if @array == ["o", "x", "x", "", "x", "","","o",""]
        @game.s7 = "o"
      end
      if @array == ["o", "x", "", "x", "x", "","","o",""]
        @game.s6 = "o"
      end
      if @array == ["o", "x", "", "", "x", "x","","o",""]
        @game.s4 = "o"
      end
      if @array == ["o", "x", "", "", "x", "","x","o",""]
        @game.s3 = "o"
      end
      if @array == ["o", "x", "", "", "x", "","","o","x"]
        @game.s3 = "o"
      end
      # user went in middle first top right second
      if @array == ["o", "x", "x", "", "x", "","o","",""]
        @game.s4 = "o"
        # GAME OVER
      end
      if @array == ["o", "", "x", "x", "x", "","o","",""]
        @game.s6 = "o"
      end
      if @array == ["o", "", "x", "", "x", "x","o","",""]
        @game.s4 = "o"
        # GAME OVER
      end
      if @array == ["o", "", "x", "", "x", "","o","x",""]
        @game.s4 = "o"
        # GAME OVER
      end
      if @array == ["o", "", "x", "", "x", "","o","","x"]
        @game.s4 = "o"
        # GAME OVER
      end
      # user went in middle first middle left second
      if @array == ["o", "", "x", "x", "x", "o","","",""]
        @game.s6 = "7"
      end
      if @array == ["o", "", "", "x", "x", "o","x","",""]
        @game.s3 = "o"
      end
      if @array == ["o", "", "", "x", "x", "o","","x",""]
        @game.s2 = "o"
      end
      if @array == ["o", "", "", "x", "x", "o","","","x"]
        @game.s2 = "o"
      end
      # user went in middle first middle right second
      if @array == ["o", "", "", "o", "x", "x","","",""]
        @game.s6 = "7"
      end
      if @array == ["o", "x", "", "o", "x", "x","","",""]
        @game.s7 = "o"
        # GAME OVER
      end
      if @array == ["o", "", "x", "o", "x", "x","","",""]
        @game.s7 = "o"
        # GAME OVER
      end
      if @array == ["o", "", "", "o", "x", "x","x","",""]
        @game.s3 = "o"
      end
      if @array == ["o", "", "", "o", "x", "x","","x",""]
        @game.s7 = "o"
        # GAME OVER
      end
      if @array == ["o", "", "", "o", "x", "x","","","x"]
        @game.s7 = "o"
        # GAME OVER
      end
      # user went in middle first bottom left second
      # LEFT OFF HERE
      if @array == ["o", "x", "x", "", "x", "","","o",""]
        @game.s7 = "o"
      end
      if @array == ["o", "x", "", "x", "x", "","","o",""]
        @game.s6 = "o"
      end
      if @array == ["o", "x", "", "", "x", "x","","o",""]
        @game.s4 = "o"
      end
      if @array == ["o", "x", "", "", "x", "","x","o",""]
        @game.s3 = "o"
      end
      if @array == ["o", "x", "", "", "x", "","","o","x"]
        @game.s3 = "o"
      end


    end
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
