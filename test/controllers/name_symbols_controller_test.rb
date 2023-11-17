require "test_helper"

class NameSymbolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @name_symbol = name_symbols(:one)
  end

  test "should get index" do
    get name_symbols_url
    assert_response :success
  end

  test "should get new" do
    get new_name_symbol_url
    assert_response :success
  end

  test "should create name_symbol" do
    assert_difference("NameSymbol.count") do
      post name_symbols_url, params: { name_symbol: { name_of_element: @name_symbol.name_of_element, symbo_of_element: @name_symbol.symbo_of_element } }
    end

    assert_redirected_to name_symbol_url(NameSymbol.last)
  end

  test "should show name_symbol" do
    get name_symbol_url(@name_symbol)
    assert_response :success
  end

  test "should get edit" do
    get edit_name_symbol_url(@name_symbol)
    assert_response :success
  end

  test "should update name_symbol" do
    patch name_symbol_url(@name_symbol), params: { name_symbol: { name_of_element: @name_symbol.name_of_element, symbo_of_element: @name_symbol.symbo_of_element } }
    assert_redirected_to name_symbol_url(@name_symbol)
  end

  test "should destroy name_symbol" do
    assert_difference("NameSymbol.count", -1) do
      delete name_symbol_url(@name_symbol)
    end

    assert_redirected_to name_symbols_url
  end
end
