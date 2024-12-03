defmodule Aoc2024.Day1.Utils do
  def generate_arrays([], arr1, arr2) do {arr1, arr2} end

  def generate_arrays([line | rest], arr1, arr2) do
    [first_value, second_value] = String.split(line, " ", trim: true)
    generate_arrays(rest, [first_value | arr1], [second_value | arr2])
  end
end
