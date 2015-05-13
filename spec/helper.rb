require 'minitest/autorun'
require 'minitest/pride'
require 'active_record'
require 'database_cleaner'
require 'pry'

require_relative '../models/blog'
require_relative '../models/author'
require_relative '../models/category'
require_relative '../models/post'
require_relative '../models/comment'
require_relative '../models/post_tags'
require_relative '../models/tag'

class MiniTest::Test
  def setup
    ActiveRecord::Base.establish_connection(
      :adapter => 'sqlite3',
      :database => 'spec/blog.sqlite3'
    )

    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end
end
