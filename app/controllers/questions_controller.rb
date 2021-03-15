class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:ask] == 'I am going to work'
      params[:answer] = 'Great!'
    elsif params[:ask].include?('?')
      params[:answer] = 'Silly question, get dressed and go to work!'
    else
      params[:answer] = 'I dont care, get dressed and go to work!'
    end
  end
end
