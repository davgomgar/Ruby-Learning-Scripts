#coding: utf-8
=begin
 Clase en la que implementaremos un árbol Binario
=end
class BinaryTree
  attr_accessor :left
  attr_accessor :right
  attr_accessor :data

  def initialize(data=nil)
    @left = nil
    @right = nil
    @data = data
  end

  def insert(value)
    if @data == nil
      @data = value
    elsif value <= @data
      if @left == nil
        @left = BinaryTree.new value
      else
        @left.insert value
      end
    else if @right == nil
          @right = BinaryTree.new value
         else
            @right.insert value
         end
    end
  end

  def inorden
    @left.inorden {|y| yield y} if !@left.nil?
    yield @data
    @right.inorden {|y| yield y} if !@right.nil?
  end

  def preorden
    yield @data
    @left.preorden {|y| yield y} if !@left.nil?
    @right.preorden {|y| yield y} if !@right.nil?
  end

  def postorden
    @left.postorden {|el| yield el} if !@left.nil?
    @right.postorden {|el| yield el} if !@right.nil?
    yield @data
  end
end

#Probamos el arbol
items = [50, 20, 80, 10, 30, 70, 90, 5, 14,28, 41, 66, 75, 88, 96]
print "Vamos a añadir los siguientes items al árbol: #{items}\n"
tree = BinaryTree.new
items.each {|x| tree.insert(x)}
print "Recorrido del árbol en INORDEN: "
tree.inorden {|x| print x, " "}
print "\n"
print "Recorrido del árbol en PREORDEN: "
tree.preorden {|x| print x, " "}
print "\n"
print "Recorrido del árbol en POSTORDEN: "
tree.postorden {|x| print x, " "}
print "\n"