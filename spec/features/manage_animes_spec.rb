require 'rails_helper'
require 'support/manage_animes_steps'
RSpec.feature "ManageAnimes", type: :feature do
  include ManageSteps

  describe 'managing an anime' do
  	context "an anime exists in Database" do
  		before do
				add_an_anime()
				visit ("/animes")
			end
  		it "displays the name" do
  			i_should_see_this("Tari Tari")
  		end
  		it "displays the mal_id" do
  			i_should_see_this("13333")
  		end
  		it "displays the tag list" do
  			i_should_see_this("sad")
        i_should_see_this("school")
        i_should_see_this("music")
  		end  		
  		#it "links to the show page" do 
      #  click_link("Show")
      #  expect()
  		#end
      it "links to the edit page" do 
        i_should_see_this("Edit")
      end
      it "links to the show page" do 
        i_should_see_this("Show")
      end

  	end
  end
end
