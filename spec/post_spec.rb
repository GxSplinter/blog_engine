require_relative 'helper'

describe Post do
  it 'belongs to an author' do

  end

  it 'has many comments' do
    blog = Blog.create!(name: 'BenBlog')
    author = blog.authors.create!(name: 'Ben Lovell')
    category = blog.categories.create!(name: 'Motorsports')

    Post.create!(
      title: 'Formula 1',
      content: 'My first post',
      author: author,
      category: category
    )

    comment = blog.comments.create!(
      name: 'Jack',
      content: 'Ayyy lmao'
    )

    blog.comment.empty?.must_equal(false)
  end

  it 'belongs to a category' do

  end

  it 'belongs to a blog through a category' do

  end

  it 'has many tags through posttags' do

  end
end
