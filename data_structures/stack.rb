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

#Como ejemplo práctico usaremos la pila para determinar si una cadena de caracteres
#contiene símbolos de manera correcta (parentesis, corchetes, etc...)
def paren_match_string? (str)
  stack = Stack.new
  l_symbols = "([<{"
  r_symbols = ")]>}"
  str.each_byte do |byte|
    chr = byte.chr
    #Si es un simbolo de apertura, a la pila
    stack.push chr if l_symbols.include? chr
    #Si es de cierre, comprobamos símbolo de cima de la pila ya que debe ser el mismo
    if r_symbols.include? chr
      top_sym = stack.peek
      #Comprobamos si es el elemento de cierre del existente en la cima de la pila
      if l_symbols.index(top_sym) == r_symbols.index(chr)
        stack.pop
      else
        return false  
      end
    end
    # Ignoramos caracteres que no son simbolos
  end
  stack.empty?
end

str1 = "(((a+b))*((c-d)-(e*f))"
str2 = "[[(a-(b-c))], [[x,y]]]"

puts "Is str1 well formed?: #{paren_match_string? str1}"
puts "Is str2 well formed?: #{paren_match_string? str2}"