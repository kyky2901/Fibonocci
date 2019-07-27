module Fibonacci
  def self.iterative_fib(n)
  i = 1
  series = [0,1]

  return n if series.include? n
  

  while i < n do
      series << (series[i-1] + series[i])
      i = i + 1
    end
    return series.pop
  end

  def self.recursive_fib(n)
    return n if (0..1).include? n
    return ( self.recursive_fib(n-2) + self.recursive_fib(n-1))
  end
end

p Fibonacci.recursive_fib(35)
p Fibonacci.iterative_fib(35)