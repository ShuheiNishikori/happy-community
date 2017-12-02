require 'test_helper'

class CommunityTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community_tag = community_tags(:one)
  end

  test "should get index" do
    get community_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_community_tag_url
    assert_response :success
  end

  test "should create community_tag" do
    assert_difference('CommunityTag.count') do
      post community_tags_url, params: { community_tag: { community_id: @community_tag.community_id, tag_id: @community_tag.tag_id } }
    end

    assert_redirected_to community_tag_url(CommunityTag.last)
  end

  test "should show community_tag" do
    get community_tag_url(@community_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_community_tag_url(@community_tag)
    assert_response :success
  end

  test "should update community_tag" do
    patch community_tag_url(@community_tag), params: { community_tag: { community_id: @community_tag.community_id, tag_id: @community_tag.tag_id } }
    assert_redirected_to community_tag_url(@community_tag)
  end

  test "should destroy community_tag" do
    assert_difference('CommunityTag.count', -1) do
      delete community_tag_url(@community_tag)
    end

    assert_redirected_to community_tags_url
  end
end
