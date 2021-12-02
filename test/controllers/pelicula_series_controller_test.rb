require "test_helper"

class PeliculaSeriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pelicula_series = pelicula_series(:one)
  end

  test "should get index" do
    get pelicula_series_url, as: :json
    assert_response :success
  end

  test "should create pelicula_series" do
    assert_difference('PeliculaSerie.count') do
      post pelicula_series_url, params: { pelicula_series: { calificacion: @pelicula_series.calificacion, imagen: @pelicula_series.imagen, titulo: @pelicula_series.titulo } }, as: :json
    end

    assert_response 201
  end

  test "should show pelicula_series" do
    get pelicula_series_url(@pelicula_series), as: :json
    assert_response :success
  end

  test "should update pelicula_series" do
    patch pelicula_series_url(@pelicula_series), params: { pelicula_series: { calificacion: @pelicula_series.calificacion, imagen: @pelicula_series.imagen, titulo: @pelicula_series.titulo } }, as: :json
    assert_response 200
  end

  test "should destroy pelicula_series" do
    assert_difference('PeliculaSerie.count', -1) do
      delete pelicula_series_url(@pelicula_series), as: :json
    end

    assert_response 204
  end
end
