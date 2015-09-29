require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post :create, artist: { bio: @artist.bio, facebook: @artist.facebook, googleplus: @artist.googleplus, instagram: @artist.instagram, name: @artist.name, studio_id: @artist.studio_id, twitter: @artist.twitter }
    end

    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should show artist" do
    get :show, id: @artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist
    assert_response :success
  end

  test "should update artist" do
    patch :update, id: @artist, artist: { bio: @artist.bio, facebook: @artist.facebook, googleplus: @artist.googleplus, instagram: @artist.instagram, name: @artist.name, studio_id: @artist.studio_id, twitter: @artist.twitter }
    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete :destroy, id: @artist
    end

    assert_redirected_to artists_path
  end
end
