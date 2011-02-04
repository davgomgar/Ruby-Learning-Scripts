#coding:utf-8
=begin
 Ejemplo de MEMOIZING de una funcion "cara" de ejecutar
=end
require 'benchmark'
include Benchmark
require 'memoize'
include Memoize

puts "IMPORTANTE: MEMOIZE es una GEM ---> gem install memoize"

def fib(n)
  if n== 0 || n == 1 
      n
  else 
      fib(n-1)+fib(n-2)
  end
end
Benchmark.bm(25) do |x|
   x.report("Sin memoizing: ") {fib(40)}
end
memoize :fib
Benchmark.bm(25) do |x|
   x.report("Con memoizing: ") {fib(41)}
end

