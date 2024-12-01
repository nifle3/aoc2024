defmodule Aoc2024.Day1.Part1 do
  import Aoc2024.Day1.Utils

  def main do
    read_file()
    |> String.split("\n", trim: true)
    |> generate_arrays([], [])
    |> sort_arrays
    |> calculate_distance([])
    |> Enum.sum
    |> IO.puts
  end

  defp sort_arrays({arr1, arr2}) do {Enum.sort(arr1), Enum.sort(arr2)} end

  defp calculate_distance({[], []}, distances) do distances end

  defp calculate_distance({[elem1 | rest1], [elem2 | rest2]}, distances) do
    elem1 = String.to_integer(elem1)
    elem2 = String.to_integer(elem2)

    result = abs(elem1 - elem2)

    calculate_distance({rest1, rest2}, [result | distances])
  end
end
