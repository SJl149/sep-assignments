require 'benchmark'

def fib(n)
  if (n == 0)
    return 0
  elsif (n == 1)
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

def fib_it(n)
  fib_0 = 0
  fib_1 = 1

  for i in (0...n-1) do
    temp = fib_0
    fib_0 = fib_1
    fib_1 = temp + fib_0
  end
  fib_1
end

puts "Recursive Benchmark:"
puts Benchmark.measure { fib(20)}
puts "Iterative Benchmark:"
puts Benchmark.measure { fib_it(20)}
