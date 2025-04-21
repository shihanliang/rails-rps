class MovesController < ApplicationController
  def rock
    @player_move = "rock"
    play_game
  end

  def paper
    @player_move = "paper"
    play_game
  end

  def scissors
    @player_move = "scissors"
    play_game
  end

  private

  def play_game
    @computer_move = ["rock", "paper", "scissors"].sample

    if @player_move == @computer_move
      @outcome = "It's a tie!"
    elsif (
      @player_move == "rock" && @computer_move == "scissors" ||
      @player_move == "paper" && @computer_move == "rock" ||
      @player_move == "scissors" && @computer_move == "paper"
    )
      @outcome = "You win!"
    else
      @outcome = "You lose!"
    end

    render :play
  end
end
