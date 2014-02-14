require 'test_helper'

class BlobstoresControllerTest < ActionController::TestCase
  setup do
    @blobstore = blobstores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blobstores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blobstore" do
    assert_difference('Blobstore.count') do
      post :create, blobstore: { caption: @blobstore.caption, city: @blobstore.city, continent: @blobstore.continent, country: @blobstore.country, name: @blobstore.name, title: @blobstore.title }
    end

    assert_redirected_to blobstore_path(assigns(:blobstore))
  end

  test "should show blobstore" do
    get :show, id: @blobstore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blobstore
    assert_response :success
  end

  test "should update blobstore" do
    patch :update, id: @blobstore, blobstore: { caption: @blobstore.caption, city: @blobstore.city, continent: @blobstore.continent, country: @blobstore.country, name: @blobstore.name, title: @blobstore.title }
    assert_redirected_to blobstore_path(assigns(:blobstore))
  end

  test "should destroy blobstore" do
    assert_difference('Blobstore.count', -1) do
      delete :destroy, id: @blobstore
    end

    assert_redirected_to blobstores_path
  end
end
