require 'test_helper'

class LearningMaterialsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    lm = LearningMaterial.create(topic: "test topic", source: "test source")
    get :show, id: lm.id
    assert_response :success
  end

end
