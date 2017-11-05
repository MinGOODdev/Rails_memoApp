class Memo < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  
  # TODO: validation, title, content, user_id
end
