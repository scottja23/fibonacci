def iterative_fib(num)
  sequence = [0, 1]
  (1..num).each do |number|
    sequence << sequence[-2] + sequence[-1]
  end
  puts sequence
end

iterative_fib(8)

puts "---------"

def fibonacci(number, sequence = [0, 1])
  if number == 0
    return sequence
  else
    sequence << sequence[-2] + sequence[-1]
    fibonacci(number -1, sequence)
    
  end
end

puts fibonacci(500)