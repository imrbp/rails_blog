require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "scheduled return true for draft blog post" do
    assert blog_posts(:draft).draft?
  end

  test "draft return false for publlished blog post" do
    refute blog_posts(:draft).published?
  end

  test "draft return false for scheduled blog post" do
    refute blog_posts(:draft).scheduled?
  end

  test "published return true for published blog post" do
    assert blog_posts(:published).published?
  end

  test "published return false for draft blog post" do
    refute blog_posts(:published).draft?
  end

  test "published return false for scheduled blog post" do
    refute blog_posts(:published).scheduled?
  end

  test "scheduled return true for scheduled blog post" do
    assert blog_posts(:scheduled).scheduled?
  end

  test "scheduled return false for draft blog post" do
    refute blog_posts(:scheduled).draft?
  end

  test "scheduled return false for published blog post" do
    refute blog_posts(:scheduled).published?
  end
end
