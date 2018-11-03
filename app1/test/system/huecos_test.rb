require "application_system_test_case"

class HuecosTest < ApplicationSystemTestCase
  setup do
    @hueco = huecos(:one)
  end

  test "visiting the index" do
    visit huecos_url
    assert_selector "h1", text: "Huecos"
  end

  test "creating a Hueco" do
    visit huecos_url
    click_on "New Hueco"

    fill_in "Direccion", with: @hueco.direccion
    fill_in "Localidad", with: @hueco.localidad
    fill_in "Ranking", with: @hueco.ranking
    fill_in "Tamanio", with: @hueco.tamanio
    click_on "Create Hueco"

    assert_text "Hueco was successfully created"
    click_on "Back"
  end

  test "updating a Hueco" do
    visit huecos_url
    click_on "Edit", match: :first

    fill_in "Direccion", with: @hueco.direccion
    fill_in "Localidad", with: @hueco.localidad
    fill_in "Ranking", with: @hueco.ranking
    fill_in "Tamanio", with: @hueco.tamanio
    click_on "Update Hueco"

    assert_text "Hueco was successfully updated"
    click_on "Back"
  end

  test "destroying a Hueco" do
    visit huecos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hueco was successfully destroyed"
  end
end
