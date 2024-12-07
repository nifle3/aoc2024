defmodule Aoc2024.Day7.Part2 do
  import Aoc2024.Day7.Utils

  def main do
    "./input/day7.txt"
    |> File.read!
    |> String.split("\n", trim: true)
    |> Enum.map(&parse_lines/1)
    |> Enum.filter(&is_correct_test_number/1)
    |> Enum.map(fn {test_number, _} -> test_number end)
    |> Enum.sum
    |> IO.puts
  end

  defp is_correct_test_number(input) do is_correct_test_number(input, 0) end

  defp is_correct_test_number({test_number, []}, result) do test_number == result end

  defp is_correct_test_number({test_number, [cur_operand | tail]}, 0) do
    is_correct_test_number({test_number, tail}, cur_operand )
  end

  defp is_correct_test_number({test_number, _}, result) when result > test_number do false end

  defp is_correct_test_number({test_number, [cur_operand | tail]}, result) do
    is_correct_test_number({test_number, tail}, result * cur_operand )
      or
    is_correct_test_number({test_number, tail}, result + cur_operand )
      or
    is_correct_test_number({test_number, tail}, concat(result, cur_operand))
  end

  def concat(a, b) do
    num_digits = :math.log10(b) |> floor() |> Kernel.+(1)
    a * trunc(:math.pow(10, num_digits)) + b
  end
end
