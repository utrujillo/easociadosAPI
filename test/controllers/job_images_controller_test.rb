require 'test_helper'

class JobImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_image = job_images(:one)
  end

  test "should get index" do
    get job_images_url, as: :json
    assert_response :success
  end

  test "should create job_image" do
    assert_difference('JobImage.count') do
      post job_images_url, params: { job_image: { descripcion: @job_image.descripcion, imagen: @job_image.imagen, job_id: @job_image.job_id, titulo: @job_image.titulo } }, as: :json
    end

    assert_response 201
  end

  test "should show job_image" do
    get job_image_url(@job_image), as: :json
    assert_response :success
  end

  test "should update job_image" do
    patch job_image_url(@job_image), params: { job_image: { descripcion: @job_image.descripcion, imagen: @job_image.imagen, job_id: @job_image.job_id, titulo: @job_image.titulo } }, as: :json
    assert_response 200
  end

  test "should destroy job_image" do
    assert_difference('JobImage.count', -1) do
      delete job_image_url(@job_image), as: :json
    end

    assert_response 204
  end
end
