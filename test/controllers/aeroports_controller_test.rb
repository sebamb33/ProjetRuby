require "test_helper"

class AeroportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aeroport = aeroports(:one)
  end

  test "should get index" do
    get aeroports_url
    assert_response :success
  end

  test "should get new" do
    get new_aeroport_url
    assert_response :success
  end

  test "should create aeroport" do
    assert_difference("Aeroport.count") do
      post aeroports_url, params: { aeroport: { libelle: @aeroport.libelle, name: @aeroport.name } }
    end

    assert_redirected_to aeroport_url(Aeroport.last)
  end

  test "should show aeroport" do
    get aeroport_url(@aeroport)
    assert_response :success
  end

  test "should get edit" do
    get edit_aeroport_url(@aeroport)
    assert_response :success
  end

  test "should update aeroport" do
    patch aeroport_url(@aeroport), params: { aeroport: { libelle: @aeroport.libelle, name: @aeroport.name } }
    assert_redirected_to aeroport_url(@aeroport)
  end

  test "should destroy aeroport" do
    assert_difference("Aeroport.count", -1) do
      delete aeroport_url(@aeroport)
    end

    assert_redirected_to aeroports_url
  end
end
