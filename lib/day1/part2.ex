defmodule Aoc2024.Day1.Part2 do
  import Aoc2024.Day1.Utils

  def main do
    read_file()
    |> String.split("\n", trim: true)
    |> generate_arrays([], [])
    |> calculate_sim_score([])
    |> Enum.sum
    |> IO.puts
  end

  def calculate_sim_score({[], _}, sim_scores) do sim_scores end

  def calculate_sim_score({[element | arr1], arr2}, sim_scores) do
    sim_score = Enum.count(arr2, fn x -> x == element end)
    element = String.to_integer(element)
    sim_score = sim_score * element
    calculate_sim_score({arr1, arr2}, [ sim_score | sim_scores])
  end


end
