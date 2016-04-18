class Anime < ActiveRecord::Base
	validates_presence_of :name, :mal_id
	has_many :taggings, dependent: :destroy
	has_many :tags, through: :taggings
	has_many :recommendations
	has_many :answers, through: :recommendations

	def all_tags=(names)
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
	
#	def slug
#    name.downcase.gsub(" ", "-")  
#  end

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
