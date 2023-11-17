require "application_system_test_case"

class NameSymbolsTest < ApplicationSystemTestCase
  setup do
    @name_symbol = name_symbols(:one)
  end

  test "visiting the index" do
    visit name_symbols_url
    assert_selector "h1", text: "Name symbols"
  end

  test "should create name symbol" do
    visit name_symbols_url
    click_on "New name symbol"

    fill_in "Name of element", with: @name_symbol.name_of_element
    fill_in "Symbo of element", with: @name_symbol.symbo_of_element
    click_on "Create Name symbol"

    assert_text "Name symbol was successfully created"
    click_on "Back"
  end

  test "should update Name symbol" do
    visit name_symbol_url(@name_symbol)
    click_on "Edit this name symbol", match: :first

    fill_in "Name of element", with: @name_symbol.name_of_element
    fill_in "Symbo of element", with: @name_symbol.symbo_of_element
    click_on "Update Name symbol"

    assert_text "Name symbol was successfully updated"
    click_on "Back"
  end

  test "should destroy Name symbol" do
    visit name_symbol_url(@name_symbol)
    click_on "Destroy this name symbol", match: :first

    assert_text "Name symbol was successfully destroyed"
  end
end
