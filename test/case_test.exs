defmodule CaseTest do
  use ExUnit.Case
  doctest Case

  test "pascalcase" do
    # From https://github.com/blakeembrey/pascal-case/blob/master/test.js

    assert Case.pascalcase("aaa-bbb") == "AaaBbb"

    assert Case.pascalcase("test") == "Test"
    assert Case.pascalcase("TEST") == "Test"

    assert Case.pascalcase("test string") == "TestString"
    assert Case.pascalcase("Test String") == "TestString"

    assert Case.pascalcase("dot.case") == "DotCase"
    assert Case.pascalcase("path/case") == "PathCase"

    # assert Case.pascalcase("TestString") == "TestString"

    # assert Case.pascalcase(["my STRING", "tr"]) == "MyStrıng"

    # assert Case.pascalcase(["test 1 2 3", null, true]) == "Test123"

    assert 1 + 1 == 2
  end
end
