defmodule Mix.Tasks.Day7 do
  alias Aoc2024.Day7.{Part1, Part2}
  use Mix.Task

  def run(_) do
    IO.puts "Part1`s result:"
    Part1.main

    IO.puts "Part2`s result:"
    Part2.main

  end

end
