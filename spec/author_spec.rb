require_relative 'helper'

describe Author do
  it 'has a twitter handle' do
    author = Author.create!(name: 'Glen', twitter_handle: '@GxSplinter')
    author.twitter_handle.must_equal('@GxSplinter')
  end
end