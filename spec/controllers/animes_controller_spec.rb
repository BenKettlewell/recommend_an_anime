require 'rails_helper'

RSpec.describe AnimesController, type: :controller do
	describe "GET #index" do
		let(:anime_1) {FactoryGirl.create(:anime, name: 'Tari Tari')}
		let(:anime_2) {FactoryGirl.create(:anime, name: "Jo Jo's Adventure")}

		before do
			anime_1
			anime_2
		end
		it "returns all the animes" do
			get(:index)
			expect(assigns(:animes)).to eq([anime_1, anime_2])
		end
	end
end
