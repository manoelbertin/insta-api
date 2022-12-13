class Post < ApplicationRecord
  #has_many :comments, class_name: "Comment", foreign_key: "reference_id"
  has_many :comments, class_name: "Comment", foreign_key: "post_id"

  validates :title, presence: true
end
