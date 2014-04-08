require 'test_helper'

class ClubsControllerTest < ActionController::TestCase
  setup do
    @club = clubs(:one)
	@update = {
		title: 'ACM Club',
		description: 'The club for the Association of Computational Machinery',
		image_url: 'ksu.jpg',
	}
  end
  
  def index
	@clubs = Club.all
  end
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clubs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create club" do
    assert_difference('Club.count') do
      post :create, club: @update
    end

    assert_redirected_to club_path(assigns(:club))
  end

  test "should show club" do
    get :show, id: @club
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @club
    assert_response :success
  end

  test "should update club" do
    patch :update, id: @club, club: @update
    assert_redirected_to club_path(assigns(:club))
  end

  test "should destroy club" do
    assert_difference('Club.count', -1) do
      delete :destroy, id: @club
    end

    assert_redirected_to clubs_path
  end
end
