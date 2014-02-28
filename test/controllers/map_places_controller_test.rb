require 'test_helper'

class MapPlacesControllerTest < ActionController::TestCase
  setup do
    @map_place = map_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:map_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create map_place" do
    assert_difference('MapPlace.count') do
      post :create, map_place: { latitude: @map_place.latitude, longitude: @map_place.longitude, place: @map_place.place }
    end

    assert_redirected_to map_place_path(assigns(:map_place))
  end

  test "should show map_place" do
    get :show, id: @map_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @map_place
    assert_response :success
  end

  test "should update map_place" do
    patch :update, id: @map_place, map_place: { latitude: @map_place.latitude, longitude: @map_place.longitude, place: @map_place.place }
    assert_redirected_to map_place_path(assigns(:map_place))
  end

  test "should destroy map_place" do
    assert_difference('MapPlace.count', -1) do
      delete :destroy, id: @map_place
    end

    assert_redirected_to map_places_path
  end
end
