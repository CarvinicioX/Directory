require 'test_helper'

class SubSectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_sector = sub_sectors(:one)
  end

  test "should get index" do
    get sub_sectors_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_sector_url
    assert_response :success
  end

  test "should create sub_sector" do
    assert_difference('SubSector.count') do
      post sub_sectors_url, params: { sub_sector: { Sector_id: @sub_sector.Sector_id, description: @sub_sector.description, num_subsector: @sub_sector.num_subsector } }
    end

    assert_redirected_to sub_sector_url(SubSector.last)
  end

  test "should show sub_sector" do
    get sub_sector_url(@sub_sector)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_sector_url(@sub_sector)
    assert_response :success
  end

  test "should update sub_sector" do
    patch sub_sector_url(@sub_sector), params: { sub_sector: { Sector_id: @sub_sector.Sector_id, description: @sub_sector.description, num_subsector: @sub_sector.num_subsector } }
    assert_redirected_to sub_sector_url(@sub_sector)
  end

  test "should destroy sub_sector" do
    assert_difference('SubSector.count', -1) do
      delete sub_sector_url(@sub_sector)
    end

    assert_redirected_to sub_sectors_url
  end
end
