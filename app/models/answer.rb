class Answer < ActiveRecord::Base
	has_many :responses
	has_many :questions, through: :responses
	belongs_to :tag
	has_many :recommendations
	has_many :animes, through: :recommendations

	def all_animes=(id)
		self.animes = id.split(", ").map do |name|
			Anime.where(id: id).first
		end
	end

	def all_animes
		self.animes.map(&:name).join(", ")
	end
	
	def self.recommended_by(name)
		Anime.find_by_name!(name).answers
	end

	def self.recommendation_counts
		Anime.select("animes.*, count(recommendations.anime_id) as count").
		joins(:recommendations).group("recommendations.anime_id")
	end
end
