defmodule RustElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :rust_elixir,
      version: "0.1.0",
      elixir: "~> 1.6",
      compilers: [:rustler] ++ Mix.compilers,
      start_permanent: Mix.env() == :prod,
      rustler_crates: rustler_crates(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.16.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end

  defp rustler_crates do
    [niftest: [
      path: "native/niftest",
      mode: rustc_mode(Mix.env)
    ]]
  end
  defp rustc_mode(:prod), do: :release
  defp rustc_mode(_), do: :debug
end
