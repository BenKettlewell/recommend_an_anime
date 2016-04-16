class Tagging < ActiveRecord::Base
  belongs_to :anime
  belongs_to :tag

end
