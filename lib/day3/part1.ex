defmodule Aoc2024.Day3.Part1 do
  def main do
    File.read!("./input/day3.txt")
    |> find_all_mul
    |> Enum.map(&find_all_digits/1)
    |> Enum.map(&mul_digits/1)
    |> List.flatten
    |> Enum.sum
    |> IO.puts
  end

  defp find_all_mul(data) do
    ~r/mul\(\d+,\d+\)/
    |> Regex.scan(data)
    |> List.flatten
  end

  defp find_all_digits(data) do
    ~r/\d+/
    |> Regex.scan(data)
    |> List.flatten()
    |> Enum.map(fn x -> String.to_integer(x) end)
  end

  defp mul_digits(data) do
    data
    |> Enum.chunk_every(2)
    |> Enum.map(fn [a, b] -> a * b end)
  end
end
