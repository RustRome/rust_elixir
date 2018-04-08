defmodule RustElixirTest do
  use ExUnit.Case
  doctest RustElixir

  test "greets the world" do
    assert RustElixir.hello() == :world
  end

  test "native call" do
    assert RustElixir.add(1, 2) == {:ok, 3}
  end
end
