class Category < ActiveRecord::Base
  belongs_to :blog
  has_many :posts
  #has_many :comments, :through :posts
end
