require 'test_helper'

class EvaluacionsControllerTest < ActionController::TestCase
  setup do
    @evaluacion = evaluacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evaluacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evaluacion" do
    assert_difference('Evaluacion.count') do
      post :create, evaluacion: { alumno_id: @evaluacion.alumno_id, nota: @evaluacion.nota, teacher_id: @evaluacion.teacher_id }
    end

    assert_redirected_to evaluacion_path(assigns(:evaluacion))
  end

  test "should show evaluacion" do
    get :show, id: @evaluacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evaluacion
    assert_response :success
  end

  test "should update evaluacion" do
    patch :update, id: @evaluacion, evaluacion: { alumno_id: @evaluacion.alumno_id, nota: @evaluacion.nota, teacher_id: @evaluacion.teacher_id }
    assert_redirected_to evaluacion_path(assigns(:evaluacion))
  end

  test "should destroy evaluacion" do
    assert_difference('Evaluacion.count', -1) do
      delete :destroy, id: @evaluacion
    end

    assert_redirected_to evaluacions_path
  end
end
