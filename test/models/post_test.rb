require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new
  end

  test '#valid?' do
    assert_not @post.valid?

    @post.body = 'a'
    assert @post.valid?

    @post.body = 'a' * 129
    assert_not @post.valid?
  end
end
