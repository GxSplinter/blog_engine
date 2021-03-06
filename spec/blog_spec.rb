require_relative 'helper'




describe Blog do
  before do
    @blog = Blog.create!(name: 'BenBlog')
    @author = @blog.authors.create!(name: 'Ben Lovell')
    @category = @blog.categories.create!(name: 'Motorsports')
    @post = Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: @author,
      category: @category
    )

  end

  it 'has many posts through categories' do
    @blog.posts.empty?.must_equal(false)
  end

  it 'has many authors' do
    @blog.authors.empty?.must_equal(false)
  end

  it 'has many categories' do
    @blog.categories.empty?.must_equal(false)
  end
end
