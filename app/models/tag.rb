class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :animes, through: :taggings
	has_many :answers

	def to_param
    "#{id}-#{name.parameterize}"
  end
end
