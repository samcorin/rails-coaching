class CoachingController < ApplicationController

  def answer
    @question = params[:query]
    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  def coach_answer(question)
    if question == "I am going to work right now!"
      return ""
    elsif question.end_with? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(question)
    if question == "I am going to work right now!".upcase
      return ""
    elsif question == question.upcase
      return "I can feel your motivation! #{coach_answer(question)}"
    else
      return coach_answer(question).to_s
    end
  end
end
