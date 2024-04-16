defmodule NewYearCounterTest do
  use ExUnit.Case
  doctest NewYearCounter

  test "greets the world" do
    assert NewYearCounter.hello() == :world
  end
end
