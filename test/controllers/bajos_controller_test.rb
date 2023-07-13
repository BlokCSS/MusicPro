require "test_helper"

class BajosControllerTest < ActionDispatch::IntegrationTest
  test "should get baterias" do
    get bajos_baterias_url
    assert_response :success
  end

  test "should get accesorios" do
    get bajos_accesorios_url
    assert_response :success
  end
end
