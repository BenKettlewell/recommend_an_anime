class Question < ActiveRecord::Base
	has_many :responses
	has_many :answers, through: :responses
	attr_writer :all_answers
	after_save :assign_answers

	def all_answers
		@all_answers || answers.map(&:answer).join(' ')
	end
	
	private
	
	def assign_answers
		byebug
		if @all_answers
			self.answers = @all_answers.split(/\s+/).map do |answer|
				Answer.find_or_create_by(answer: answer)
			end
		end
	end
end
