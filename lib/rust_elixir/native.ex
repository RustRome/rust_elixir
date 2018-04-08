defmodule NifNotLoadedError do
  defexception message: "nif not loaded"
end

defmodule NifTest do
  use Rustler, otp_app: :rust_elixir, crate: "niftest"

  def add(_x,_y), do: err()

  defp err() do
    throw(NifNotLoadedError)
  end
end
