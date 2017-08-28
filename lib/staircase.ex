defmodule Staircase do
  @moduledoc """
  Generate staircases based on the input value
  """

  @doc """
  Receives the input and print the staircase to the console
  """
  def main(size) do
    Enum.each(1..size, fn i ->
      IO.puts(string_gen(size - i, " ") <> string_gen(i, "#"))
    end)
  end

  @doc """
  Generate a string with `size` characters `char`

  ## Example

      iex> Staircase.string_gen(0, "#")
      ""

      iex> Staircase.string_gen(1, "#")
      "#"

      iex> Staircase.string_gen(7, "#")
      "#######"

      iex> Staircase.string_gen(0, " ")
      ""

      iex> Staircase.string_gen(1, " ")
      " "

      iex> Staircase.string_gen(7, " ")
      "       "
  """
  def string_gen(0, _), do: ""
  def string_gen(size, char) when size > 0 do
    Enum.reduce(1..size, "", fn(_i, acc) -> acc <> char end)
  end
end
