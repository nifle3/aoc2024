defmodule Aoc2024.Day4.Part2 do
  def main do
    File.read!("./input/day4.txt")
    |> String.split("/n", trim: true)
    |> Enum.map(&String.graphemes/1)
    |> algo
    |> IO.puts
  end

  def algo(data) do
    data
  end
end
