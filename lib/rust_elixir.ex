defmodule RustElixir do
  @moduledoc """
  Documentation for RustElixir.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RustElixir.hello
      :world

  """
  def hello do
    :world
  end

  def add(x,y) do
    NifTest.add(x,y)
  end
end
