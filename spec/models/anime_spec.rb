require 'rails_helper'

# Prefix class methods with a '.'
# Prefix instance methods with a '#'

describe Anime do
	context '#name' do
		it 'returns the name of the anime' do
			anime = FactoryGirl.create(:anime)
			expect(anime.name).to eq 'Tari Tari'
		end
	end
	context '#mal_id' do
		it 'returns the mal_id of the anime' do
			anime = FactoryGirl.create(:anime)
			expect(anime.mal_id).to eq 13333
		end
	end
	context '#all_tags' do
		it 'returns all the tags on the anime' do
			anime = FactoryGirl.create(:anime)
			expect(anime.all_tags).to eq 'music, school, sad'
		end
	context  ''
	end



#	subject(:anime) { Anime.new }
#	context  "created" do
#		before {anime.do_a_thing}
#		it {should be_a_thing}
#	end
end