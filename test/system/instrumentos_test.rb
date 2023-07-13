require "application_system_test_case"

class InstrumentosTest < ApplicationSystemTestCase
  setup do
    @instrumento = instrumentos(:one)
  end

  test "visiting the index" do
    visit instrumentos_url
    assert_selector "h1", text: "Instrumentos"
  end

  test "should create instrumento" do
    visit instrumentos_url
    click_on "New instrumento"

    fill_in "Foto", with: @instrumento.foto
    fill_in "Nombre", with: @instrumento.nombre
    fill_in "Precio", with: @instrumento.precio
    click_on "Create Instrumento"

    assert_text "Instrumento was successfully created"
    click_on "Back"
  end

  test "should update Instrumento" do
    visit instrumento_url(@instrumento)
    click_on "Edit this instrumento", match: :first

    fill_in "Foto", with: @instrumento.foto
    fill_in "Nombre", with: @instrumento.nombre
    fill_in "Precio", with: @instrumento.precio
    click_on "Update Instrumento"

    assert_text "Instrumento was successfully updated"
    click_on "Back"
  end

  test "should destroy Instrumento" do
    visit instrumento_url(@instrumento)
    click_on "Destroy this instrumento", match: :first

    assert_text "Instrumento was successfully destroyed"
  end
end
