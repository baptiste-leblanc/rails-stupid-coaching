class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answer = ''
    @sentence = params[:sentence]
    if params[:sentence].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:sentence] == 'I am going to work'
      @answer = 'Great!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
