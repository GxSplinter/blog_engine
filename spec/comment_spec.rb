require_relative 'helper'

describe Comment do
  before do
    blog = Blog.create!(name: 'Glens Blog')
    author = blog.authors.create!(
      name: 'Glen',
      twitter_handle: '@GxSplinter'
      )

    category = blog.categories.create!(name: 'eSports')

    @post = Post.create!(
      title: 'Dreamhack',
      content: 'Fnatic win Dreamhack yay!!!',
      author: author,
      category: category
      )

    @comment = @post.comments.create!(
      name: 'Dick',
      content: 'NiP are best in the world hurrdurr'
      )
  end

  it 'is valid with valid attributes' do
    @comment.valid?.must_equal(true)
  end

  it 'belongs to a post' do
    @comment.post.must_equal(@post)
  end
end