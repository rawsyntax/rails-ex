require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "requires a title" do
    article = Article.new
    article.valid?

    assert article.errors.messages[:title] == ["can't be blank", "is too short (minimum is 5 characters)"]
  end

  test "requires a body" do
    article = Article.new
    article.valid?

    assert article.errors.messages[:body] == ["can't be blank", "is too short (minimum is 5 characters)"]
  end
end
