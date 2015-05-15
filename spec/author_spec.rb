require_relative 'helper'

describe Author do
  before do
    blog = Blog.create!(name: 'GlensBlog')
    @author = blog.authors.create!(
      name: 'Glen',
      twitter_handle: '@GxSplinter'
      )
  end

  it 'has a twitter handle' do
    @author.twitter_handle.must_equal('@GxSplinter')
  end

  it 'is valid with valid attributes' do
    @author.valid?.must_equal(true)
  end

  it 'requires a blog' do
    author = Author.new(name: 'Ben', twitter_handle: '@benlovell')

    author.valid?.must_equal(false)
  end
end