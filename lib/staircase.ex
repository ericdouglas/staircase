defmodule Staircase do
  def main(size) do
    Enum.each(1..size, fn i ->
      IO.puts(space_gen(size - i) <> symbol_gen(i))
    end)
  end

  def space_gen(0), do: ""
  def space_gen(num) when num > 0 do
    Enum.reduce(1..num, "", fn(_i, acc) -> acc <> " " end)
  end

  def symbol_gen(num) do
    Enum.reduce(1..num, "", fn(_i, acc) -> acc <> "#" end)
  end
end
