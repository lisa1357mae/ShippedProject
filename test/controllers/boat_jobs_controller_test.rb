require 'test_helper'

class BoatJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boat_job = boat_jobs(:one)
  end

  test "should get index" do
    get boat_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_boat_job_url
    assert_response :success
  end

  test "should create boat_job" do
    assert_difference('BoatJob.count') do
      post boat_jobs_url, params: { boat_job: { boat_id: @boat_job.boat_id, job_id: @boat_job.job_id } }
    end

    assert_redirected_to boat_job_url(BoatJob.last)
  end

  test "should show boat_job" do
    get boat_job_url(@boat_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_boat_job_url(@boat_job)
    assert_response :success
  end

  test "should update boat_job" do
    patch boat_job_url(@boat_job), params: { boat_job: { boat_id: @boat_job.boat_id, job_id: @boat_job.job_id } }
    assert_redirected_to boat_job_url(@boat_job)
  end

  test "should destroy boat_job" do
    assert_difference('BoatJob.count', -1) do
      delete boat_job_url(@boat_job)
    end

    assert_redirected_to boat_jobs_url
  end
end
