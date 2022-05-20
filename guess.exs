defmodule Chop do
  def guess(actual, range = low..high)
      when is_integer(actual) and actual <= high and actual >= low do
    currentGuess = div(low + high, 2)
    guessHelper(actual, range, currentGuess)
  end

  def guessHelper(actual, _, actual), do: IO.puts(actual)

  defp guessHelper(actual, _..high, currentGuess) when actual > currentGuess do
    IO.puts("Is it #{currentGuess}")
    guess(actual, (currentGuess + 1)..high)
  end

  defp guessHelper(actual, low.._, currentGuess) when actual < currentGuess do
    IO.puts("Is it #{currentGuess}")
    guess(actual, low..(currentGuess - 1))
  end
end
