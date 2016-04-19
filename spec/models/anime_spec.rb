require 'rails_helper'

# Prefix class methods with a '.'
# Prefix instance methods with a '#'

describe Anime do
	subject(:anime) {FactoryGirl.create(:anime)}

	context "#name" do
		it {expect(anime.name).to eq 'Tari Tari'}
	end
	context '#mal_id' do
		#it 'returns the mal_id of the anime' do
		it {expect(anime.mal_id).to eq 13333}
	end
	context '#all_tags' do
		#it 'returns all the tags on the anime' do
		it {expect(anime.all_tags).to eq 'music, school, sad'}
	end
	context '.tag_counts' do
		it {expect(Anime.tag_counts).to eq 3}
	end



#	subject(:anime) { Anime.new }
#	context  "created" do
#		before {anime.do_a_thing}
#		it {should be_a_thing}
#	end
end