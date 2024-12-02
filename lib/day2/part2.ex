defmodule Aoc2024.Day2.Part2 do
  import Aoc2024.Day2.Utils

  def main do
    File.read!("./input/day2.txt")
    |> String.split("\n", trim: true)
    |> parse_lines()
    |> Enum.map(fn x -> is_save?(x) end)
    |> Enum.count(fn x -> x end)
    |> IO.puts
  end

  defp is_save?(data) do
    case is_save_without_delete?(data) do
      true -> true
      false -> is_save_with_delete?(data)
    end
  end


  defp is_save_without_delete?(data) do
    data
    |> Enum.chunk_every(2, 1, :discard)
    |> _is_save?()
  end

  defp _is_save?(data) do
    Enum.all?(data, fn [a, b] -> a > b and a-b >= 1 and a-b <= 3 end) or
    Enum.all?(data, fn [a, b] -> a < b and b-a >= 1 and b-a <= 3 end)
  end

  defp is_save_with_delete?(data) do
    data
    |> Enum.with_index()
    |> Enum.map(fn {_, index} ->
      List.delete_at(data, index)
      |> is_save_without_delete?()
    end)
    |> Enum.any?(fn x -> x end)
  end
end
