FactoryGirl.define do
  factory :anime do
    sequence(:name) {|n| "anime_#{n}"}
    sequence(:mal_id)
    all_tags 'music, school, sad'
  end
end
