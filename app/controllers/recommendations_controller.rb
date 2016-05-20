class RecommendationsController < ApplicationController
  # GET /recommendations
  # GET /recommendations.json
	def index
    if cookies[:flags].present?
	    @new_thing = 'thing'
      cookies[:flags] += ' thing'
    end
    cookies[:flags] = 'flag_1 flag_2'
    @flags = cookies[:flags].split(' ')
    @questions = Question.all()
    @answers = Answer.all()
  end
  
  # POST /recommendations/start
  def start
    cookies[:flags] += 'begin'
    #respond_to do |foramt|
    #  format.js { render partial: "/recommendations/start"}
    #end
    render "/recommendations/start"
  end
  
  # POST /recommendations
  def submit
    if params[:question_num].to_i == 0
      @questions = Question.all()
    else
      @questions = Question.find(params[:question_num])
    end
    respond_to do |format|
      format.js 
    end
  end
  
end
