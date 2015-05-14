require_relative '../models/blog'
require_relative '../models/author'
require_relative '../models/category'
require_relative '../models/post'
require_relative '../models/post_tag'
require_relative '../models/tag'

blog = Blog.create!(name: 'Glen Smith Blog')
blog.authors.create!(name: 'Glen Smith', twitter_handle: '@GxSplinter')

blog.categories.create!(name: 'Gaming')
blog.categories.create!(name: 'eSports')