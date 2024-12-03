defmodule Aoc2024.Day3.Part2 do
  def main do
    File.read!("./input/day3.txt")
    |> get_all_tokens
    |> calculate
    |> IO.puts
  end

  defp get_all_tokens(data) do
    ~r/mul\(\d+,\d+\)|do\(\)|don't\(\)/
    |> Regex.scan(data)
    |> List.flatten
  end

  defp calculate(arr, is_cancel \\ :do, result \\ 0)

  defp calculate([], _, result) do result end

  defp calculate(["do()" | tail], _, result) do
    calculate(tail, :do, result)
  end

  defp calculate(["don't()" | tail], _, result) do
    calculate(tail, :dont, result)
  end

  defp calculate([_ | tail], :dont, result) do
    calculate(tail, :dont, result)
  end

  defp calculate([element | tail], :do, result) do
    mul_result = mul(element)
    calculate(tail, :do, result + mul_result)
  end

  defp mul(data) do
    ~r/\d+/
    |> Regex.scan(data)
    |> List.flatten()
    |> case do
      [a, b] -> String.to_integer(a) * String.to_integer(b)
    end
  end
end
