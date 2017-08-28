defmodule Staircase do
  @moduledoc """
  Generate staircases based on the input value
  """

  @doc """
  Receives the input and print the staircase to the console
  """
  def main(size) do
    Enum.each(1..size, fn i ->
      IO.puts(space_gen(size - i) <> symbol_gen(i))
    end)
  end

  @doc """
  Generate a string with spaces to complete the row

  ## Example

      iex> Staircase.space_gen(0)
      ""

      iex> Staircase.space_gen(1)
      " "

      iex> Staircase.space_gen(7)
      "       "
  """
  def space_gen(0), do: ""
  def space_gen(num) when num > 0 do
    Enum.reduce(1..num, "", fn(_i, acc) -> acc <> " " end)
  end

  @doc """
  Generate a string with `n` characters (`#`)

  ## Example

      iex> Staircase.symbol_gen(0)
      ""

      iex> Staircase.symbol_gen(1)
      "#"

      iex> Staircase.symbol_gen(7)
      "#######"
  """
  def symbol_gen(0), do: ""
  def symbol_gen(num) when num > 0 do
    Enum.reduce(1..num, "", fn(_i, acc) -> acc <> "#" end)
  end
end
