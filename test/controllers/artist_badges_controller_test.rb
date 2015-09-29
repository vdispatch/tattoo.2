require 'test_helper'

class ArtistBadgesControllerTest < ActionController::TestCase
  setup do
    @artist_badge = artist_badges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artist_badges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist_badge" do
    assert_difference('ArtistBadge.count') do
      post :create, artist_badge: { artist_id: @artist_badge.artist_id, badge_image: @artist_badge.badge_image, description: @artist_badge.description, name: @artist_badge.name }
    end

    assert_redirected_to artist_badge_path(assigns(:artist_badge))
  end

  test "should show artist_badge" do
    get :show, id: @artist_badge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist_badge
    assert_response :success
  end

  test "should update artist_badge" do
    patch :update, id: @artist_badge, artist_badge: { artist_id: @artist_badge.artist_id, badge_image: @artist_badge.badge_image, description: @artist_badge.description, name: @artist_badge.name }
    assert_redirected_to artist_badge_path(assigns(:artist_badge))
  end

  test "should destroy artist_badge" do
    assert_difference('ArtistBadge.count', -1) do
      delete :destroy, id: @artist_badge
    end

    assert_redirected_to artist_badges_path
  end
end
