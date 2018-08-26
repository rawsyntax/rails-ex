require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "requires a commenter" do
    comment = Comment.new
    comment.valid?

    assert comment.errors.messages[:commenter] == ["can't be blank"]
  end

  test "requires a body" do
    comment = Comment.new
    comment.valid?

    assert comment.errors.messages[:commenter] == ["can't be blank"]
  end
end
