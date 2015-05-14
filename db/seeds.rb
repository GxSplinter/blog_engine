require 'faker'

require_relative '../models/blog'
require_relative '../models/author'
require_relative '../models/category'
require_relative '../models/post'
require_relative '../models/post_tag'
require_relative '../models/tag'

blog = Blog.create!(name: 'Glen Smith Blog')

blog.authors.create!(
  name: Faker::Name.name,
  twitter_handle: "@#{Faker::Hacker.noun}"
  )

blog.categories.create!(name: Faker::Commerce.department)
blog.categories.create!(name: Faker::Commerce.department)