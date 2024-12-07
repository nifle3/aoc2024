defmodule Mix.Tasks.Day4 do
  alias Aoc2024.Day4.{Part1, Part2}
  use Mix.Task

  def run(_) do
    IO.puts "Part 1 result:"
    Part1.main()

    IO.puts "Part 2 result:"
    Part2.main()
  end
end
