class Recommendation < ActiveRecord::Base
  belongs_to :anime
  belongs_to :answer
end
