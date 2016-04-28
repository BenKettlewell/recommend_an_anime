class RecommendationsController < ApplicationController


  # GET /recommendations
  # GET /recommendations.json
	def index
    @answers = Answer.all
  end

end
