FactoryGirl.define do
  factory :question do
    sequence(:question) {|n| "question_#{n}"}
    all_tags 'music, school, sad'
  end
  #factory :answer do
  #end
  	
end
