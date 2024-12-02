defmodule Mix.Tasks.Day2 do
  alias Aoc2024.Day2.{Part1, Part2}
  use Mix.Task

  @spec run(any()) :: :ok
  def run(_) do
    IO.puts "Part1 result: "
    Part1.main

    IO.puts "Part2 result: "
    Part2.main
  end
end
