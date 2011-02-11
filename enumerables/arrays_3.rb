#coding: utf-8
=begin
 Se mostrará en este fichero algunas de las operaciones con Arrays:
  - Eliminación de elementos
      - Elementos nil --> compact
      - Eliminación elemento de una posición dada ---> delete_at
      - Eliminación elementos que cumplen criterio ---> delete_if

  - Concatenación arrays (<<, +)
  - Zip y flatten
=end
require '../utils/utils.rb'
include Util
asteriscos
texto_centrado "Eliminar elementos de un array... Métodos compact, delete_at, delete_if, pop, shift y clear"
asteriscos
puts "Eliminación de elementos nil de un array"
a = [1,3,4,5,nil,32,nil,99,nil,198]
print "Array Original: "
p a
print "a.compact="
p a.compact
puts "Eliminación de elemento en posición determinada: delete_at"
print "Array Original: "
p a
print "Ejecutamos a.delete_at(3)=>"
a.delete_at 3
p a
puts "Eliminación condicional: DELETE_IF "
a = [1,3,4,5,nil,32,nil,99,nil,198,9999,3123,2772,6000,nil,173]
print "Array Original: "
p a
puts "Ejecutamos a.delete_if{|x| x % 2 == 0 && x>100 unless x.nil?}"
p a.delete_if{|x| x % 2 == 0 && x>100 unless x.nil?}
puts "Eliminación último elemento de un array (método pop)"
print "Array Original: "
p a
a.pop
print "Después de a.pop = "
p a
puts "Eliminación primer elemento de un array (método shift)"
print "Array Original: "
p a
a.shift
print "Después de a.shift = "
p a
puts "Borrando todo el array ---> método clear"
print "Array Original: "
p a
puts "a.clear = #{a.clear}"
a = [1,3,4,5,6]
b = [9,999,3]
print "a=#{a}\n"
print "b=#{b}\n"
print "a<<b=#{a << b}\n" #Concatenar con << añade 1 elemento a un array. Si ese elemento es un array, se crea nested array
a = [1,3,4,5,6]
b = [9,999,3]
print "a=#{a}\n"
print "b=#{b}\n"
print "a+b=#{a+b}\n"
a = [1, 2, 3, 4]
b = ["a", "b", "c", "d"]
print "a=#{a}\n"
print "b=#{b}\n"
c = a.zip b
print "c=a.zip(b)=>#{c}\n"
print "c.flatten=#{c.flatten}\n"
