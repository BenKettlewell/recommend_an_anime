require 'rails_helper'

RSpec.describe RecommendationsController, type: :controller do
	context "on index page" do 
		before do
			get :index
		end
		it "should have a flags cookie" do
	    #expect(response.cookies['flags']).not_to eq nil
	    expect(cookies['flags']).not_to eq nil
	  end
	  it "should pass the flags to the view in a @flags variable" do
	  	expect(assigns(:flags)).to eq cookies['flags'].split(' ')
	  end
	  context "second visit to index page" do
	  	before do
	  		get :index
	  	end
		  it "should have new_things" do
		  	expect(assigns(:new_thing)).not_to eq nil
		  end
		end
  end
end