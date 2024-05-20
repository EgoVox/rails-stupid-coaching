class PagesController < ApplicationController
  RIGHT_ANSWER ="I am going to work right now!"
  def questions

  end

  def answers
    if params[:question] == RIGHT_ANSWER
      @answer = "Good work"
    elsif params[:question].include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don’t care, get dressed and go to work!"
    end
  end
end
