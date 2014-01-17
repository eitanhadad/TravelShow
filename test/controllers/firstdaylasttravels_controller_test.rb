require 'test_helper'

class FirstdaylasttravelsControllerTest < ActionController::TestCase
  setup do
    @firstdaylasttravel = firstdaylasttravels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:firstdaylasttravels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create firstdaylasttravel" do
    assert_difference('Firstdaylasttravel.count') do
      post :create, firstdaylasttravel: { first_day: @firstdaylasttravel.first_day, friend_name: @firstdaylasttravel.friend_name, last_travel: @firstdaylasttravel.last_travel }
    end

    assert_redirected_to firstdaylasttravel_path(assigns(:firstdaylasttravel))
  end

  test "should show firstdaylasttravel" do
    get :show, id: @firstdaylasttravel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @firstdaylasttravel
    assert_response :success
  end

  test "should update firstdaylasttravel" do
    patch :update, id: @firstdaylasttravel, firstdaylasttravel: { first_day: @firstdaylasttravel.first_day, friend_name: @firstdaylasttravel.friend_name, last_travel: @firstdaylasttravel.last_travel }
    assert_redirected_to firstdaylasttravel_path(assigns(:firstdaylasttravel))
  end

  test "should destroy firstdaylasttravel" do
    assert_difference('Firstdaylasttravel.count', -1) do
      delete :destroy, id: @firstdaylasttravel
    end

    assert_redirected_to firstdaylasttravels_path
  end
end
