class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :animes, through: :taggings
end
