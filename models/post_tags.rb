class PostTag < ActiveRecord::Base
  belongs_to :post
  belongs_to :tag
  has_many :tags
  has_many :posts
end