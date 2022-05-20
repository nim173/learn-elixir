defmodule MyList do
  # 1) takes a list and a function
  # applies the function to each element of the list and then sums the result
  def mapsum([], _func), do: 0

  def mapsum([head | tail], func) do
    res = func.(head) + mapsum(tail, func)
    res
  end

  # 2) returns the element with the maximum value in a list
  def max([head | tail]), do: maxHelper(tail, head)

  defp maxHelper([x], currMax) when currMax > x, do: currMax
  defp maxHelper([x], _currMax), do: x
  defp maxHelper([head | tail], currMax) when head >= currMax, do: maxHelper(tail, head)
  defp maxHelper([_head | tail], currMax), do: maxHelper(tail, currMax)

  # book solution
  # def max([x]), do: x
  # def max([head | tail]), do: Kernel.max(head, max(tail))

  # 3) take a list and a integer n
  # adds n to each list element wrapping if the addition results in a character greater than z.
  # use ? in front of a character literal to reveal its code point: ?a -> 97
  def caesar([], _n), do: []
  def caesar([head | tail], n) when head + n <= ?z, do: [head + n | caesar(tail, n)]
  def caesar([head | tail], n), do: [head + n - 26 | caesar(tail, n)]
end
