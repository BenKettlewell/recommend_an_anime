require 'rails_helper'

#RSpec.describe RecommendationsIndex, type: :view do

describe 'recommendations/index.html.erb' do
  let(:questions) {FactoryGirl.build_stubbed_list(:question,10)}
  let(:answers) {FactoryGirl.build_stubbed_list(:answer, 10)}
  let(:flags) {['flag_1','flag_2']}
  
  context 'database has 10 questions and answers' do 
    before do 
      assign(:questions, questions)
      assign(:answers, answers)
      assign(:flags, flags)
      render
    end
    it 'displays all questions' do
      expect(rendered).to have_content('question_1')
      expect(rendered).to have_content('question_8')
    end
    it 'displays all answers' do
      expect(rendered).to have_content('answer_11')
      expect(rendered).to have_content('answer_12')
    end
    it 'displays the flags set' do
      expect(rendered).to have_content('flag_1')
    end
  end

end	
