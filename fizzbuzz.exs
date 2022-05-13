fizzbuzz = fn 
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, a) -> a
end

IO.puts "(0,0,0): " <> fizzbuzz.(0,0,0)
IO.puts "(0,'dfd',0): " <> fizzbuzz.(0,"dfd",0)
IO.puts "(1,0,0): " <> fizzbuzz.(1,0,0)
IO.puts fizzbuzz.(1,1,99)


func3 = fn n -> fizzbuzz.(rem(n,3), rem(n,5), n) end

IO.puts func3.(10)
IO.puts func3.(11)
IO.puts func3.(12)
IO.puts func3.(13)
IO.puts func3.(14)
IO.puts func3.(15)
IO.puts func3.(16)
