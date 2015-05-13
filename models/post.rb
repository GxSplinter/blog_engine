class Post < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  has_many :post_tags
  has_many :comments
  has_many :tags, through: :post_tags, source: :tag
end
