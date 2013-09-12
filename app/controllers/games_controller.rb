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
        @game.s2 = "o"
      end
      if @array == ["x", "", "", "", "o", "","x","",""]
        @game.s4 = "o"
      end
      if @array == ["x", "", "", "", "o", "","","x",""]
        @game.s4 = "o"
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
        @game.s4 = "o"
      end
      if @array == ["", "x", "", "", "o", "","","x",""]
        @game.s1 = "o"
      end
      if @array == ["", "x", "", "", "o", "","","","x"]
        @game.s6 = "o"
      end

      # user went top right first
      if @array == ["", "", "x", "x", "o", "","","",""]
        @game.s2 = "o"
      end
      if @array == ["", "", "x", "", "o", "x","","",""]
        @game.s9 = "o"
      end
      if @array == ["", "", "x", "", "o", "","x","",""]
        @game.s2 = "o"
      end
      if @array == ["", "", "x", "", "o", "","","x",""]
        @game.s6 = "o"
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
        @game.s3 = "o"
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
        @game.s7 = "o"
      end
      # user went in middle first top right second
      if @array == ["o", "x", "x", "", "x", "","o","",""] ||
         @array == ["o", "", "x", "", "x", "x","o","",""] ||
         @array == ["o", "", "x", "", "x", "","o","x",""] ||
         @array == ["o", "", "x", "", "x", "","o","","x"]
        @game.s4 = "o"
        # GAME OVER
      elsif @array == ["o", "", "x", "x", "x", "","o","",""]
        @game.s6 = "o"
      end
      # user went in middle first middle left second
      if @array == ["o", "", "x", "x", "x", "o","","",""]
        @game.s6 = "o"
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
      if @array == ["o", "x", "", "x", "x", "o","","",""]
        @game.s8 = "o"
      end
      if @array == ["o", "", "x", "x", "x", "o","","",""]
        @game.s7 = "o"
      end
      # user went in middle first middle right second
      if @array == ["o", "x", "", "o", "x", "x","","",""] ||
         @array == ["o", "", "", "o", "x", "x","","","x"] ||
         @array == ["o", "", "", "o", "x", "x","","x",""] ||
         @array == ["o", "", "x", "o", "x", "x","","",""]
        @game.s7 = "o"
        # GAME OVER
      elsif @array == ["o", "", "", "o", "x", "x","x","",""]
        @game.s3 = "o"
      end

      # user went in middle first bottom left second
      if @array == ["o", "", "o", "x", "x", "","x","",""] ||
         @array == ["o", "", "o", "", "x", "x","x","",""] ||
         @array == ["o", "", "o", "", "x", "","x","x",""] ||
         @array == ["o", "", "o", "", "x", "","x","","x"]
         @game.s2 = "o"
        # GAME OVER
      elsif @array == ["o", "x", "o", "", "x", "","x","",""]
         @game.s8 = "o"
      end
      # user went in middle first bottom middle second
      if @array == ["o", "o", "", "x", "x", "","","x",""] ||
         @array == ["o", "o", "", "", "x", "x","","x",""] ||
         @array == ["o", "o", "", "", "x", "","x","x",""] ||
         @array == ["o", "o", "", "", "x", "","","x","x"]
        @game.s3 = "o"
        # GAME OVER
      elsif @array == ["o", "o", "x", "", "x", "","","x",""]
        @game.s7 = "o"
      end

      # user went in middle first bottom right second
      if @array == ["o", "", "o", "x", "x", "","","","x"] ||   @array == ["o", "", "o", "", "x", "x","","","x"] ||    @array == ["o", "", "o", "", "x", "","x","","x"] ||    @array == ["o", "", "o", "", "x", "","","x","x"]
        @game.s2 = "o"
        # GAME OVER
      elsif @array == ["o", "x", "o", "", "x", "","","","x"]
        @game.s8 = "o"
      end
        # user went in top left first top middle second
      if @array == ["x", "x", "o", "x", "o", "","","",""] || @array == ["x", "x", "o", "", "o", "x","","",""] || @array == ["x", "x", "o", "", "o", "","","x",""] || @array == ["x", "x", "o", "", "o", "","","","x"]
        @game.s7 = "o"
        # GAME OVER
      elsif @array == ["x", "x", "o", "", "o", "","x","",""]
        @game.s4 = "o"
      end
        # user went in top left first top right second
      if @array == ["x", "o", "x", "x", "o", "","","",""] || @array == ["x", "o", "x", "", "o", "x","","",""] || @array == ["x", "o", "x", "", "o", "","x","",""] || @array == ["x", "o", "x", "", "o", "","","","x"]
        @game.s8 = "o"
        # GAME OVER
      elsif @array == ["x", "o", "x", "", "o", "","","x",""]
        @game.s4 = "o"
      end
        # user went in top left first middle left second
      if @array == ["x", "x", "", "x", "o", "","o","",""] || @array == ["x", "", "", "x", "o", "x","o","",""] || @array == ["x", "", "", "x", "o", "","o","x",""] || @array == ["x", "", "", "x", "o", "","o","","x"]
        @game.s3 = "o"
        # GAME OVER
      elsif @array == ["x", "", "x", "x", "o", "","o","",""]
        @game.s2 = "o"
      end
        # user went in top left first middle right second
      if @array == ["x", "o", "x", "", "o", "x","","",""] || @array == ["x", "o", "", "x", "o", "x","","",""] || @array == ["x", "o", "", "", "o", "x","x","",""] || @array == ["x", "o", "", "", "o", "x","","","x"]
        @game.s8 = "o"
        # GAME OVER
      elsif @array == ["x", "o", "", "", "o", "x","","x",""]
        @game.s3 = "o"
      end
        # user went in top left first bottom left second
      if @array == ["x", "x", "", "o", "o", "","x","",""] || @array == ["x", "", "x", "o", "o", "","x","",""] || @array == ["x", "", "", "o", "o", "","x","x",""] || @array == ["x", "", "", "o", "o", "","x","","x"]
        @game.s6 = "o"
        # GAME OVER
      elsif @array == ["x", "", "", "o", "o", "x","x","",""]
        @game.s8 = "o"
      end
        # user went in top left first bottom middle second
      if @array == ["x", "x", "", "o", "o", "","","x",""] ||
        @array == ["x", "", "x", "o", "o", "","","x",""] ||
        @array == ["x", "", "", "o", "o", "","x","x",""] ||
        @array == ["x", "", "", "o", "o", "","","x","x"]
        @game.s6 = "o"
        # GAME OVER
      elsif @array == ["x", "", "", "o", "o", "x","","x",""]
        @game.s7 = "o"
      end
        # user went in top left first bottom right second
      if @array == ["x", "o", "x", "", "o", "","","","x"] || @array == ["x", "o", "", "x", "o", "","","","x"] || @array == ["x", "o", "", "", "o", "x","","","x"] || @array == ["x", "o", "", "", "o", "","x","","x"]
        @game.s8 = "o"
        # GAME OVER
      elsif @array == ["x", "o", "", "", "o", "","","x","x"]
        @game.s7 = "o"
      end
        # user went in top middle first top right second
      if @array == ["o", "x", "x", "x", "o", "","","",""] || @array == ["o", "x", "x", "", "o", "x","","",""] || @array == ["o", "x", "x", "", "o", "","x","",""] || @array == ["o", "x", "x", "", "o", "","","x",""]
        @game.s9 = "o"
        # GAME OVER
      elsif @array == ["o", "x", "x", "", "o", "","","","x"]
        @game.s6 = "o"
      end
        # user went in top middle first middle left second
      if @array == ["o", "x", "x", "x", "o", "","","",""] || @array == ["o", "x", "", "x", "o", "x","","",""] || @array == ["o", "x", "", "x", "o", "","x","",""] || @array == ["o", "x", "", "x", "o", "","","x",""]
        @game.s9 = "o"
        # GAME OVER
      elsif @array == ["o", "x", "", "x", "o", "","","","x"]
        @game.s3 = "o"
      end
        # user went in top middle first middle right second
      if @array == ["x", "x", "o", "", "o", "x","","",""] || @array == ["", "x", "o", "x", "o", "x","","",""] || @array == ["", "x", "o", "", "o", "x","","x",""] || @array == ["", "x", "o", "", "o", "x","","","x"]
        @game.s7 = "o"
        # GAME OVER
      elsif @array == ["", "x", "o", "", "o", "x","x","",""]
        @game.s1 = "o"
      end
        # user went in top middle first bottom left second
      if @array == ["x", "x", "", "o", "o", "","x","",""] ||
         @array == ["", "x", "x", "o", "o", "","x","",""] ||
         @array == ["", "x", "", "o", "o", "","x","x",""] ||
         @array == ["", "x", "", "o", "o", "","x","","x"]
        @game.s6 = "o"
        # GAME OVER
      elsif @array == ["", "x", "", "o", "o", "x","x","",""]
        @game.s9 = "o"
      end
        # user went in top middle first bottom middle second
      if @array == ["o", "x", "x", "", "o", "","","x",""] || @array == ["o", "x", "", "x", "o", "","","x",""] || @array == ["o", "x", "", "", "o", "x","","x",""] || @array == ["o", "x", "", "", "o", "","x","x",""]
        @game.s9 = "o"
        # GAME OVER
      elsif @array == ["o", "x", "", "", "o", "","","x","x"]
        @game.s7 = "o"
      end
        # user went in top middle first bottom right second
      if @array == ["x", "x", "", "", "o", "o","","","x"] || @array == ["", "x", "x", "", "o", "o","","","x"] || @array == ["", "x", "", "", "o", "o","x","","x"] || @array == ["", "x", "", "", "o", "o","","x","x"]
        @game.s4 = "o"
        # GAME OVER
      elsif @array == ["", "x", "", "x", "o", "o","","","x"]
        @game.s7 = "o"
      end
        # user went in top right first middle left second
      if @array == ["x", "o", "x", "x", "o", "","","",""] ||
        @array == ["", "o", "x", "x", "o", "x","","",""] ||
        @array == ["", "o", "x", "x", "o", "","x","",""] ||
        @array == ["", "o", "x", "x", "o", "","","","x"]
        @game.s8 = "o"
        # GAME OVER
      elsif @array == ["", "o", "x", "x", "o", "","","x",""]
        @game.s9 = "o"
      end
        # user went in top right first middle right second
      if @array == ["", "x", "x", "", "o", "x","","","o"] || @array == ["", "", "x", "x", "o", "x","","","o"] || @array == ["", "", "x", "", "o", "x","x","","o"] || @array == ["", "", "x", "", "o", "x","","x","o"]
        @game.s1 = "o"
        # GAME OVER
      elsif @array == ["x", "", "x", "", "o", "x","","","o"]
        @game.s2 = "o"
      end
        # user went in top right first bottom left second
      if @array == ["x", "o", "x", "", "o", "","x","",""] || @array == ["", "o", "x", "x", "o", "","x","",""] || @array == ["", "o", "x", "", "o", "x","x","",""] || @array == ["", "o", "x", "", "o", "","x","","x"]
        @game.s8 = "o"
        # GAME OVER
      elsif @array == ["", "o", "x", "", "o", "","x","x",""]
        @game.s9 = "o"
      end
        # user went in top right first bottom middle second
      if @array == ["x", "", "x", "", "o", "o","","x",""] || @array == ["", "x", "x", "", "o", "o","","x",""] || @array == ["", "", "x", "", "o", "o","x","x",""] || @array == ["", "", "x", "", "o", "o","","x","x"]
        @game.s4 = "o"
        # GAME OVER
      elsif @array == ["", "", "x", "x", "o", "o","","x",""]
        @game.s1 = "o"
      end
        # user went in top right first bottom right second
      if @array == ["x", "", "x", "", "o", "o","","","x"] || @array == ["", "x", "x", "", "o", "o","","","x"] || @array == ["", "", "x", "", "o", "o","x","","x"] || @array == ["", "", "x", "", "o", "o","","x","x"]
        @game.s4 = "o"
        # GAME OVER
      elsif @array == ["", "", "x", "x", "o", "o","","","x"]
        @game.s2 = "o"
      end
        # user went in middle left first middle right second
      if @array == ["o", "x", "", "x", "o", "x","","",""] || @array == ["o", "", "x", "x", "o", "x","","",""] || @array == ["o", "", "", "x", "o", "x","x","",""] || @array == ["o", "", "", "x", "o", "x","","x",""]
        @game.s9 = "o"
        # GAME OVER
      elsif @array == ["o", "", "", "x", "o", "x","","","x"]
        @game.s3 = "o"
      end
        # user went in middle left first bottom left second
      if @array == ["o", "x", "", "x", "o", "","x","",""] || @array == ["o", "", "x", "x", "o", "x","x","",""] || @array == ["o", "", "", "x", "o", "x","x","",""] || @array == ["o", "", "", "x", "o", "","x","x",""]
        @game.s9 = "o"
        # GAME OVER
      elsif @array == ["o", "", "", "x", "o", "","x","","x"]
        @game.s8 = "o"
      end
        # user went in middle left first bottom middle second
      if @array == ["o", "x", "", "x", "o", "","","x",""] || @array ==  ["o", "", "x", "x", "o", "","","x",""] || @array == ["o", "", "", "x", "o", "x","","x",""] || @array == ["o", "", "", "x", "o", "","x","x",""]
        @game.s9 = "o"
        # GAME OVER
      elsif @array == ["o", "", "", "x", "o", "","","x","x"]
        @game.s7 = "o"
      end
        # user went in middle left first bottom right second
      if @array == ["x", "", "o", "x", "o", "","","","x"] || @array ==  ["", "x", "o", "x", "o", "","","","x"] || @array == ["", "", "o", "x", "o", "x","","","x"] || @array == ["", "", "o", "x", "o", "","","x","x"]
        @game.s7 = "o"
        # GAME OVER
      elsif @array == ["", "", "o", "x", "o", "","x","","x"]
        @game.s8 = "o"
      end
        # user went in middle right first bottom left second
      if @array == ["o", "x", "", "", "o", "x","x","",""] || @array ==  ["o", "", "x", "", "o", "x","x","",""] || @array == ["o", "", "", "x", "o", "x","x","",""] || @array == ["o", "", "", "", "o", "x","x","x",""]
        @game.s9 = "o"
        # GAME OVER
      elsif @array == ["o", "", "", "", "o", "x","x","","x"]
        @game.s8 = "o"
      end
        # user went in middle right first bottom middle second
      if @array == ["x", "", "o", "", "o", "x","","x",""] ||
         @array ==  ["", "x", "o", "", "o", "x","","x",""] ||
         @array == ["", "", "o", "x", "o", "x","","x",""] ||
         @array ==["", "", "o", "", "o", "x","","x","x"]
        @game.s7 = "o"
        # GAME OVER
      elsif @array == ["", "", "o", "", "o", "x","x","x",""]
        @game.s9 = "o"
      end
        # user went in middle right first bottom right second
      if @array == ["x", "", "o", "", "o", "x","","x",""] || @array ==  ["", "x", "o", "", "o", "x","","x",""] || @array == ["", "", "o", "x", "o", "x","","x",""] || @array == ["", "", "o", "", "o", "x","","x","x"]
        @game.s7 = "o"
        # GAME OVER
      elsif @array == ["", "", "o", "", "o", "x","x","","x"]
        @game.s8 = "o"
      end
        # user went in bottom left first bottom middle second
      if @array == ["", "", "", "", "o", "x","x","x","o"] || @array ==  ["", "x", "", "", "o", "","x","x","o"] || @array == ["", "", "x", "", "o", "","x","x","o"] || @array == ["", "", "", "x", "o", "","x","x","o"]
        @game.s1 = "o"
        # GAME OVER
      elsif @array == ["x", "", "", "", "o", "","x","x","o"]
        @game.s4 = "o"
      end
        #2 user went in bottom left first bottom right second
      if @array == ["x", "", "", "", "o", "","x","o","x"] || @array ==  ["", "", "x", "", "o", "","x","o","x"] || @array == ["", "", "", "x", "o", "","x","o","x"] || @array == ["", "", "", "", "o", "x","x","o","x"]
        @game.s2 = "o"
        # GAME OVER
     elsif @array == ["", "x", "", "", "o", "","x","o","x"]
        @game.s4 = "o"
      end
        #1 user went in bottom middle first bottom right second
      if @array == ["x", "", "", "", "o", "","o","x","x"] || @array ==  ["", "x", "", "", "o", "","o","x","x"] || @array == ["", "", "", "x", "o", "","o","x","x"] || @array == ["", "", "", "", "o", "x","o","x","x"]
        @game.s3 = "o"
        # GAME OVER
      elsif @array == ["", "", "x", "", "o", "","o","x","x"]
        @game.s6 = "o"
      end

# RESPONDING TO 3rd MOVE
    elsif @game.move.to_i == 7
        # user went in bottom middle first bottom right second
      if @array == ["x", "", "x", "", "o", "o","o","x","x"] ||
         @array == ["", "x", "x", "", "o", "o","o","x","x"]
          @game.s4 = "o"
          # GAME OVER
      elsif @array == ["", "", "x", "x", "o", "o","o","x","x"]
          @game.s1 = "o"
          # TIE
      end
      # user went in bottom left first bottom right second
      if @array == ["x", "x", "", "o", "o", "","x","o","x"] ||
         @array == ["", "x", "x", "o", "o", "","x","o","x"]
         @game.s6 = "o"
         # GAME OVER
       elsif @array == ["", "x", "", "o", "o", "x","x","o","x"]
        @game.s3 = "o"
        # TIE
      end
      # user went in bottom left first bottom middle second
      if @array == ["x", "x", "", "o", "o", "","x","x","o"] ||
         @array == ["x", "", "x", "o", "o", "","x","x","o"]
         @game.s6 = "o"
       elsif @array == ["x", "", "", "o", "o", "x","x","x","o"]
        @game.s2 = "o"
        # TIE
       end
       # 3
       # user went in middle right first bottom right second
      if @array == ["x", "", "o", "", "o", "x","x","o","x"] ||
         @array == ["", "", "o", "x", "o", "x","x","o","x"]
         @game.s2 = "o"
         # GAME OVER
      elsif
         @array == ["", "x", "o", "x", "o", "x","x","o","x"]
         @game.s1 = "o"
         # TIE
      end
      # user went in middle right first bottom middle second
      if @array == ["", "x", "o", "", "o", "x","x","x","o"] ||
         @array == ["", "", "o", "x", "o", "x","x","x","o"]
         @game.s1 = "o"
         # GAME OVER
       elsif @array == ["x", "", "o", "", "o", "x","x","x","o"]
        @game.s4 = "o"
        # TIE
      end
      # user went in middle right first bottom left second
      if @array == ["o", "", "x", "", "o", "x","x","o","x"] ||
         @array == ["o", "", "", "x", "o", "x","x","o","x"]
         @game.s2 = "o"
         # GAME OVER
       elsif @array == ["o", "x", "", "", "o", "x","x","o","x"]
        @game.s3 = "o"
        # TIE
      end
      # user went in middle left first bottom right second
      if @array == ["x", "", "o", "x", "o", "","x","o","x"] ||
         @array == ["", "", "o", "x", "o", "x","x","o","x"]
         @game.s2 = "o"
         # GAME OVER
       elsif @array == ["", "x", "o", "x", "o", "","x","o","x"]
        @game.s1 = "o"
        # TIE
      end
      # user went in middle left first bottom middle second
      if @array == ["o", "x", "", "x", "o", "","o","x","x"] ||
         @array == ["o", "", "", "x", "o", "x","o","x","x"]
         @game.s3 = "o"
         # GAME OVER
       elsif @array == ["o", "", "x", "x", "o", "","o","x","x"]
        @game.s6 = "o"
        # TIE
      end
      # user went in middle left first bottom left second
      if @array == ["o", "", "", "x", "o", "","x","o","x"] ||
         @array == ["o", "", "", "x", "o", "","x","o","x"]
         @game.s2 = "o"
         # GAME OVER
       elsif @array == ["o", "x", "", "x", "o", "","x","o","x"]
        @game.s3 = "o"
        # TIE
      end
      # user went in middle left first middle right second
      if @array == ["o", "", "o", "x", "o", "x","","","x"] ||
         @array == ["o", "", "o", "x", "o", "x","","","x"]
         @game.s2 = "o"
         # GAME OVER
       elsif @array == ["o", "", "o", "x", "o", "x","x","","x"]
        @game.s8 = "o"
        # TIE
      end
        # user went in top right first bottom right second
      if @array == ["x", "o", "x", "x", "o", "o","","","x"] ||
         @array == ["", "o", "x", "x", "o", "o","x","","x"]
         @game.s8 = "o"
         # GAME OVER
       elsif @array == ["", "o", "x", "x", "o", "o","","x","x"]
        @game.s7 = "o"
        # TIE
      end
        # user went in top right first bottom middle second
      if @array == ["o", "x", "x", "x", "o", "o","","x",""] ||
         @array == ["o", "", "x", "x", "o", "o","x","x",""]
         @game.s9 = "o"
         # GAME OVER
       elsif @array == ["o", "", "x", "x", "o", "o","","x","x"]
        @game.s7 = "o"
        # TIE
      end
        # user went in top right first bottom left second
      if @array == ["", "o", "x", "x", "o", "","x","x","o"] ||
         @array == ["", "o", "x", "", "o", "x","x","x","o"]
         @game.s1 = "o"
         # GAME OVER
       elsif @array == ["x", "o", "x", "", "o", "","x","x","o"]
        @game.s4 = "o"
        # TIE
      end
        # user went in top right first middle right second
      if @array == ["x", "o", "x", "x", "o", "x","","","o"] ||
         @array == ["x", "o", "x", "", "o", "x","x","","o"]
         @game.s8 = "o"
         # GAME OVER
       elsif @array == ["x", "o", "x", "", "o", "x","","x","o"]
        @game.s7 = "o"
        # TIE
      end
        # user went in top right first middle left second
      if @array == ["", "o", "x", "x", "o", "x","","x","o"] ||
         @array == ["", "o", "x", "x", "o", "","x","x","o"]
         @game.s1 = "o"
         # GAME OVER
       elsif @array == ["x", "o", "x", "x", "o", "","","x","o"]
        @game.s7 = "o"
        # TIE
      end
        # user went in top middle first bottom right second
      if @array == ["x", "x", "", "x", "o", "o","o","","x"] ||
         @array == ["", "x", "", "x", "o", "o","o","x","x"]
         @game.s3 = "o"
         # GAME OVER
       elsif @array == ["", "x", "x", "x", "o", "o","o","","x"]
        @game.s1 = "o"
        # TIE
      end
        # user went in top middle first bottom middle second
      if @array == ["o", "x", "", "x", "o", "","o","x","x"] ||
         @array == ["o", "x", "", "", "o", "x","o","x","x"]
         @game.s3 = "o"
         # GAME OVER
       elsif @array == ["o", "x", "x", "", "o", "","o","x","x"]
        @game.s6 = "o"
        # TIE
      end
        # user went in top middle first bottom left second
      if @array == ["", "x", "x", "o", "o", "x","x","","o"] ||
         @array == ["", "x", "", "o", "o", "x","x","x","o"]
         @game.s1 = "o"
         # GAME OVER
       elsif @array == ["x", "x", "", "o", "o", "x","x","","o"]
        @game.s3 = "o"
        # TIE
      end
        # user went in top middle first middle right second
      if @array == ["o", "x", "o", "x", "o", "x","x","",""] ||
         @array == ["o", "x", "o", "", "o", "x","x","x",""]
         @game.s9 = "o"
         # GAME OVER
       elsif @array == ["o", "x", "o", "", "o", "x","x","","x"]
        @game.s8 = "o"
        @game.s4 = "x"
        # TIE
      end
        # user went in top middle first middle left second
      if @array == ["o", "x", "o", "x", "o", "x","","","x"] ||
         @array == ["o", "x", "o", "x", "o", "","","x","x"]
         @game.s7 = "o"
         # GAME OVER
       elsif @array == ["o", "x", "o", "x", "o", "","x","","x"]
        @game.s8 = "o"
        @game.s6 = "x"
        # TIE
      end
        # user went in top middle first top right second
      if @array == ["o", "x", "x", "", "o", "o","x","","x"] ||
         @array == ["o", "x", "x", "", "o", "o","","x","x"]
         @game.s4 = "o"
         # GAME OVER
       elsif @array == ["o", "x", "x", "x", "o", "o","","","x"]
        @game.s8 = "o"
        @game.s7 = "x"
        # TIE
      end
        # user went in top left first bottom right second
      if @array == ["x", "o", "", "x", "o", "","o","x","x"] ||
         @array == ["x", "o", "", "", "o", "x","o","x","x"]
         @game.s3 = "o"
         # GAME OVER
       elsif @array == ["x", "o", "x", "", "o", "","o","x","x"]
        @game.s6 = "o"
        @game.s4 = "x"
        # TIE
      end
        # user went in top left first bottom middle second
      if @array == ["x", "x", "", "o", "o", "x","o","x",""] ||
         @array == ["x", "", "", "o", "o", "x","o","x","x"]
         @game.s3 = "o"
         # GAME OVER
       elsif @array == ["x", "", "x", "o", "o", "x","o","x",""]
        @game.s9 = "o"
        @game.s2 = "x"
        # TIE
      end
        # user went in top left first bottom left second
      if @array == ["x", "", "x", "o", "o", "x","x","o",""] ||
         @array == ["x", "", "", "o", "o", "x","x","o","x"]
         @game.s2 = "o"
         # GAME OVER
       elsif @array == ["x", "x", "", "o", "o", "x","x","o",""]
        @game.s3 = "o"
        @game.s9 = "x"
        # TIE
      end
        # user went in top left first middle right second
      if @array == ["x", "o", "o", "x", "o", "x","","x",""] ||
         @array == ["x", "o", "o", "", "o", "x","","x","x"]
         @game.s7 = "o"
         # GAME OVER
       elsif @array == ["x", "o", "o", "", "o", "x","x","x",""]
        @game.s9 = "o"
        @game.s4 = "x"
        # TIE
      end
        # user went in top left first middle left second
      if @array == ["x", "o", "x", "x", "o", "x","o","",""] ||
         @array == ["x", "o", "x", "x", "o", "","o","","x"]
         @game.s8 = "o"
         # GAME OVER
       elsif @array == ["x", "o", "x", "x", "o", "","o","x",""]
        @game.s9 = "o"
        @game.s6 = "x"
        # TIE
      end
        # user went in top left first top right second
      if @array == ["x", "o", "x", "o", "o", "","x","x",""] ||
         @array == ["x", "o", "x", "o", "o", "","","x","x"]
         @game.s6 = "o"
         # GAME OVER
       elsif @array == ["x", "o", "x", "o", "o", "x","","x",""]
        @game.s9 = "o"
        @game.s7 = "x"
        # TIE
      end
        # user went in top left first top middle second
      if @array == ["x", "x", "o", "o", "o", "","x","x",""] ||
         @array == ["x", "x", "o", "o", "o", "","x","","x"]
         @game.s6 = "o"
         # GAME OVER
       elsif @array == ["x", "x", "o", "o", "o", "x","x","",""]
        @game.s8 = "o"
        @game.s9 = "x"
        # TIE
      end
        # user went in middle first bottom right second
      if @array == ["o", "x", "o", "x", "x", "","","o","x"]
         @game.s6 = "o"
         @game.s7 = "x"
         # TIE
       elsif @array == ["o", "x", "o", "", "x", "","x","o","x"]
        @game.s4 = "o"
        @game.s6 = "x"
         # TIE
       elsif @array == ["o", "x", "o", "", "x", "x","","o","x"]
        @game.s4 = "o"
        @game.s7 = "x"
        # TIE
      end
        # user went in middle first bottom middle second
      if @array == ["o", "o", "x", "x", "x", "","o","x",""]
         @game.s6 = "o"
         @game.s9 = "x"
         # TIE
       elsif @array == ["o", "o", "x", "", "x", "x","o","x",""]
        @game.s4 = "o"
        @game.s9 = "x"
         # TIE
       elsif @array == ["o", "o", "x", "", "x", "","o","x","x"]
        @game.s6 = "o"
        @game.s4 = "x"
        # TIE
      end
        # user went in middle first bottom right second
      if @array == ["o", "x", "o", "x", "x", "","","o","x"]
         @game.s6 = "o"
         @game.s7 = "x"
         # TIE
       elsif @array == ["o", "x", "o", "", "x", "","x","o","x"]
        @game.s4 = "o"
        @game.s6 = "x"
         # TIE
       elsif @array == ["o", "x", "o", "", "x", "x","","o","x"]
        @game.s4 = "o"
        @game.s7 = "x"
        # TIE
      end
        # user went in middle first bottom left second
      if @array == ["o", "x", "o", "x", "x", "","x","o",""]
         @game.s6 = "o"
         @game.s9 = "x"
         # TIE
       elsif @array == ["o", "x", "o", "", "x", "x","x","o",""]
        @game.s4 = "o"
        @game.s9 = "x"
         # TIE
       elsif @array == ["o", "x", "o", "", "x", "","x","o","x"]
        @game.s4 = "o"
        @game.s6 = "x"
        # TIE
      end
        # user went in middle first middle right second
      if @array == ["o", "x", "o", "o", "x", "x","x","",""]
         @game.s8 = "o"
         @game.s9 = "x"
         # TIE
       elsif @array == ["o", "", "o", "o", "x", "x","x","x",""]
        @game.s2 = "o"
        # GAME OVER
         # TIE
       elsif @array == ["o", "", "o", "o", "x", "x","x","","x"]
        @game.s2 = "o"
        # GAME OVER
        # TIE
      end
        # user went in middle first middle left second
        # 5th move top middle
      if @array == ["o", "x", "x", "x", "x", "o","","o",""]
         @game.s7 = "o"
         @game.s9 = "x"
         # TIE
       elsif @array == ["o", "x", "", "x", "x", "o","x","o",""]
          @game.s3 = "o"
          @game.s9 = "x"
          # TIE
        elsif @array == ["o", "x", "", "x", "x", "o","","o","x"]
          @game.s3 = "x"
          @game.s9 = "o"
         # TIE
         # 5th move top right
         elsif @array == ["o", "x", "x", "x", "x", "o","o","",""]
          @game.s8 = "o"
          @game.s9 = "x"
           # TIE
         elsif @array == ["o", "", "x", "x", "x", "o","o","x",""]
          @game.s2 = "o"
          @game.s9 = "x"
          # TIE
         elsif @array == ["o", "", "x", "x", "x", "o","o","","x"]
          @game.s8 = "o"
          @game.s2 = "x"
          # TIE
          # 5th move bottom left
         elsif @array == ["o", "x", "o", "x", "x", "o","x","",""]
          @game.s8 = "o"
          @game.s9 = "x"
           # TIE
         elsif @array == ["o", "", "o", "x", "x", "o","x","x",""]
          @game.s2 = "o"
          @game.s9 = "x"
          # TIE
         elsif @array == ["o", "", "o", "x", "x", "o","x","","x"]
          @game.s8 = "o"
          @game.s2 = "x"
          # TIE
          # 5th move bottom middle
         elsif @array == ["o", "o", "x", "x", "x", "o","","x",""]
          @game.s7 = "o"
          @game.s9 = "x"
           # TIE
         elsif @array == ["o", "o", "", "x", "x", "o","x","x",""]
          @game.s3 = "o"
          @game.s9 = "x"
          # TIE
         elsif @array == ["o", "o", "", "x", "x", "o","","x","x"]
          @game.s7 = "o"
          @game.s3 = "x"
          # 5th move bottom right
         elsif @array == ["o", "o", "x", "x", "x", "o","","","x"]
          @game.s7 = "o"
          @game.s8 = "x"
           # TIE
         elsif @array == ["o", "o", "", "x", "x", "o","x","","x"]
          @game.s3 = "o"
          # GAME OVER
         elsif @array == ["o", "o", "", "x", "x", "o","","x","x"]
          @game.s3 = "o"
          # GAME OVER
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
