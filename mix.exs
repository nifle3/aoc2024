defmodule Aoc2024.MixProject do
  use Mix.Project

  def project do
    [
      app: :aoc2024,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
    ]
  end

  defp deps do
    [
    ]
  end
end
