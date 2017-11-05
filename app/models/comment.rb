class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :memo
  
  # TODO: validation, content, user_id, memo_id
end
