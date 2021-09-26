defmodule TerminusSectorTest do
  use ExUnit.Case
  doctest TerminusSector

  # test "greets the world" do
  #   assert TerminusSector.hello() == :world
  # end

  test "first test" do
    assert TerminusSector.report == false
  end

end
