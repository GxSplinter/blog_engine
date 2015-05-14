require_relative 'helper'

describe Post do
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

    @comment = @post.comments.create!(
      name: 'Jack',
      content: 'Ayyy lmao'
    )

    @tag = @post.tags.create!(name: 'car')
  end

  it 'belongs to an author' do
    @post.author.must_equal(@author)
  end

  it 'has many comments' do
    @post.comments.empty?.must_equal(false)
  end

  it 'belongs to a category' do
    @post.category.must_equal(@category)
  end

  it 'belongs to a blog through a category' do
    @post.category.blog.must_equal(@blog)
  end

  it 'has many tags through posttags' do
    @post.tags.empty?.must_equal(false)
  end
end
