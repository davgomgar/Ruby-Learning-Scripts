=begin
 Clase que implementará una estructura de datos Cola. Es una estructura FIFO.
 Se almacenarán los datos internamente en un Array.
=end
class MyQueue
  def initialize
    @queue = []
  end

  def enqueue(data)
    @queue << data
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end

  def empty?
    @queue.empty?
  end

  def to_s
    p @queue
  end
end

q = MyQueue.new
q.enqueue (2)
q.enqueue 3
q.enqueue 1
q.enqueue 99
p q
puts "Peeking queue: #{q.peek}"
puts "Is queue empty? #{q.empty?}"
puts "Dequeue an element...."
q.dequeue
puts "... And peeking queue again: #{q.peek}"
puts "Queue is now: #{q.to_s}"