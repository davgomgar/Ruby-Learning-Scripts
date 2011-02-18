=begin
Clase que implementará la estuctura de datos Pila.Se almacenarán los datos en un Array
=end
class Stack

  def initialize
    @stack = []
  end

  def push (value)
    @stack.push value
  end

  def pop
    @stack.pop
  end

  def empty?
    @stack.empty?
  end

  def peek
    @stack.last
  end

  def to_s
     p @stack
  end
end

my_stack = Stack.new
my_stack.push(3)
my_stack.push(7)
my_stack.push(9)
p "Stack status: #{my_stack.to_s}"
puts "Peeking: #{my_stack.peek}"
puts "Is stack empty?: #{my_stack.empty?}"