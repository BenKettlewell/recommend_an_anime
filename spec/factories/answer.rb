FactoryGirl.define do
  factory :answer do
    sequence(:answer) {|n| "answer_#{n}"}
    #all_tags 'music, school, sad'
  end
  #factory :answer do
  #end
  	
end
