#coding:utf-8
=begin
 Ejemplo en el que mostraremos operaciones a nivel de bits (Ruby operadores tipicos | ^ ~ & ) y también
se mostrará como 
=end
require '../utils/utils'
include Util
asteriscos
texto_centrado "Ejemplo de operaciones a nivel de bits"
asteriscos
puts "Si tienes un entero accedes a los bits igual que con los array [0] bit MENOS significativo"
puts "Definimos funcion even? y funcion odd? usando dicha caracteristica"
x= 5
def even?(num)
  num[0] == 0  
end

def odd?(num)
  num[0]==1
end

print "Es par x (recordar vale 5) ? ===> "
puts even? x
print "Es impar x? ===> "
puts odd? x

puts "El acceso a nivel de bits usando []  es de solo lectura"
puts "Sin embargo, se puede dar valor a posiciones usando operadores a nivel de bits"

asteriscos
texto_centrado "Asignar a la posicion 4 del entero X un 1"
asteriscos

x |= (1<<4)

puts x

asteriscos
texto_centrado "Asignar a la posicion 3 del entero x un 0"
asteriscos

x &= ~(1<<2)

puts x

asteriscos
texto_centrado "Forma mas simple de convertir entre bases es con to_s(base)"
asteriscos

puts "En base 2: #{x.to_s(2)}"
puts "En base 8: #{x.to_s(8)}"
puts "En base 16: #{x.to_s(16)}"
puts "En base 3: #{x.to_s(3)}"

asteriscos
texto_centrado "Otra forma es con método % de clase String"
asteriscos

print "Hexadecimal(1234): "
puts hex = "%x" % 1234     
print "Octal(1234): "
puts oct = "%o" % 1234      
print "Binario(1234): "
puts bin = "%b" % 1234    
asteriscos
texto_centrado "También se Puede usar sprintf (igual que en C)"
asteriscos
str = sprintf("El número 1234 en hexadecimal es %x",1234)
puts str
