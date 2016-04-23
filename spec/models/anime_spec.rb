require 'rails_helper'
=begin
Tests to write

creation with no title
duplicate mal_ids
duplicate names
no all_tags
one all_tags

=end
describe Anime do
	subject(:anime) {FactoryGirl.create(:anime)} 
	
	describe '.tag_counts' do	
		context 'only one entry exists in Anime' do
			it 'has one entry' do
				byebug
				expect(Anime.all.count).to eq 1
			end
			context 'the single entry has 3 tags' do
				it 'returns the count of unique tags' do
					expect(Anime.tag_counts).to eq Taggings.all.count()
				end
			end
		end

		context 'two animes exist in database' do
			before(:each) do
				@anime2 = FactoryGirl.create(:anime, name: 'Tari Tari',
					mal_id: 13333, all_tags: 'music, school, sad')
			end
			context 'two animes with shared tags exist' do
				before do
					FactoryGirl.create(:anime, all_tags: 'music, school')
				end
				it 'returns the count of unique tags, not the sum' do
					expect(Anime.tag_counts).to eq 4
				end
			end
			context 'two animes with shared and different tags' do
				let!(:all_tags) {'music, school, different_tag4, another_tag5'}
				#before do
				#	FactoryGirl.create(:anime, name: 'anime2', mal_id: 1234, 
				#		)
				#end
				it 'returns the count of only the unique tags' do
					expect(Anime.tag_counts).to eq 5
				end
			end
		end
	end

	describe '#create' do
		context 'database is fresh' do
			it 'has no entries' do
				expect(Anime.find(name: 'Tari Tari').not_to exist)
			end
		end
		context 'with no name' do
			before do
				FactoryGirl.create(:anime, name: '')
			end
			it 'creates the record with no name' do
				expect(anime.to exist?)
			end
		end
	end

	describe "#name" do
		context 'it has a name' do
			let!(:new_anime) {FactoryGirl.create(:anime, name: 'Tari Tari')}
			it {expect(new_anime.name).to eq 'Tari Tari'}
		end 
	end
	describe '#mal_id' do
		it {expect(anime.mal_id).to eq 13333}
	end
	describe '#all_tags' do
		it {expect(anime.all_tags).to eq 'music, school, sad'}
	end
end