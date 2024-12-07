defmodule Aoc2024.Day7.Utils do
  def parse_lines(line) do
    [test_number_str, operands_str] = String.split(line, ":", trim: true)

    test_number = String.to_integer(test_number_str)

    operands_list =
      operands_str
      |> String.split(" ", trim: true)
      |> Enum.map(&String.to_integer/1)

    {test_number, operands_list}
  end
end
