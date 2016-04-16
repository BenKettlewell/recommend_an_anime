class Question < ActiveRecord::Base
	has_many :responses
	has_many :answers, through: :responses

	def all_answers=(names)
		self.tags = names.split(", ").map do |name|
			Tag.where(name: name.strip).first_or_create!
		end
	end

	def all_tags
		self.tags.map(&:name).join(", ")
	end
	
	def self.tagged_with(name)
		Tag.find_by_name!(name).animes
	end

	def self.tag_counts
		Tag.select("tags.*, count(taggings.tag_id) as count").
		joins(:taggings).group("taggings.tag_id")
	end

end
