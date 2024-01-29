require "test_helper"

class BlogPostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_post_index_url
    assert_response :success
  end

  test "should get show" do
    get blog_post_show_url
    assert_response :success
  end

  test "should get create" do
    get blog_post_create_url
    assert_response :success
  end

  test "should get new" do
    get blog_post_new_url
    assert_response :success
  end
end
