require 'rails_helper'
require 'support/navigate_recommendations'

RSpec.feature "ViewRecommendations", type: :feature do
  include NavigateRecommendations

  describe 'visiting the recommendations page' do
  	context 'first time visit' do
  		before do
				#delete all cookies?
				visit ('/recommendations') 
			end
  		it "displays a Begin button" do
        i_should_see_this_button("Begin")
  		end

=begin
      context 'i have clicked begin', :js => true do # uses selenium to open a browser
        before do
          click_button('Begin')
        end
=begin
        # Inspecting the DOM for lack of element after
        # using Jquery .remove() method doesn't work with 
        # capybara.
        it 'should not show a Begin button', :js => true do
          i_should_not_see_this_button("Begin")
        end
=end
      end

  		#it "displays the mal_id" do
  		#	i_should_see_this("13333")
  		#end
  		#it "displays the tag list" do
  		#	i_should_see_this("sad")
      #  i_should_see_this("school")
      #  i_should_see_this("music")
  		#end  		
  		#it "links to the show page" do 
      #  click_link("Show")
      #  expect()
  		#end
      #it "links to the edit page" do 
      #  i_should_see_this("Edit")
      #end
      #it "links to the show page" do 
      #  i_should_see_this("Show")
      #end

  	end
  end
end
