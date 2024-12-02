defmodule Aoc2024.Day2.Utils do
  def parse_lines(lines, result \\ [])

  def parse_lines([], result) do result end

  def parse_lines([line | lines], result) do
    parsed_lines = String.split(line, " ")
    parsed_lines = Enum.map(parsed_lines, fn x -> String.to_integer(x) end)
    parse_lines(lines, [parsed_lines | result])
  end
end
