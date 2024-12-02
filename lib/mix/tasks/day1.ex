defmodule Mix.Tasks.Day1 do
  alias Aoc2024.Day1.{Part1, Part2}
  use Mix.Task

    @spec run(any()) :: :ok
    def run(_) do
      IO.puts "PART1 result: "
      Part1.main
      IO.puts "PART2 result: "
      Part2.main
    end
end
