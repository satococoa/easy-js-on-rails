class Post < ActiveRecord::Base
  validates :body, presence: true, length: 1..128
end
