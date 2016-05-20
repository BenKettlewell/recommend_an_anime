require 'rails_helper'

#RSpec.describe RecommendationsIndex, type: :view do

describe 'questions/new.html.erb' do
  it 'provides a form for creating a new question' do
    #assign(:questions, FactoryGirl.create_list(:question,
    			 #10))
    assign(:question, Question.new())
    render #:index => "recommendations/index.html.erb"

    expect(rendered).to have_field('Question')
    #rendered.should contain('50.0')
  end
end	
