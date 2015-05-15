require_relative 'helper'

describe Tag do
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

  it 'is valid with valid attributes' do
    @tag.valid?.must_equal(true)
  end
end