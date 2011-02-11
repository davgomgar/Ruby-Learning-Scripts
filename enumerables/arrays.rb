#coding: utf-8
=begin
 Se mostrará en este fichero algunas de las operaciones con Arrays:
  - Instanciación
  - Acceso a posiciones del array: [], values_at, at
  - Ordenación: sort, sort! y sort_by
=end
require '../utils/utils.rb'
include Util
asteriscos
texto_centrado "Ejemplos de uso de Arrays en Ruby"
asteriscos
puts "Varias formas de crear un array: "
puts "1.- a = [1,2,3,4,5,6,7,8]"
a = [1,2,3,4,5,6,7,8]
p a
puts "2.- b = Array.new(3)"
b = Array.new(3)
p b
asteriscos
texto_centrado "OJO: Si se instancia como en el siguiente ejemplo TODOS LAS POSICIONES DEL ARRAY CONTIENEN MISMA REFERENCIA"
asteriscos
puts "3.- c = Array.new(3,'bla')"
c = Array.new(3,"bla")
p c
puts "Ejecutamos c[0].capitalize!"
c[0].capitalize!
p c
asteriscos
texto_centrado "Para evitar comportamiento anterior se puede instanciar el array Array.new(3){'bla'}"
texto_centrado "Se ejecuta ejemplo de antes pero con la intanciación mencionada (usando block)"
asteriscos
d = Array.new(3){"bla"}
p d
d[0].capitalize!
p d
asteriscos
texto_centrado "Accediendo a un array con método []"
asteriscos
puts "a[1] = #{a[1]}"
puts "a[1..5] = #{a[1..5]}"
puts "a[1,4] = #{a[1,4]}"
puts "a.at(7) = #{a.at(7)}"
puts "a.at(-3) = #{a.at(-3)}"
asteriscos
texto_centrado "Notar que si asignamos un valor en posición no existente del array ---> EL ARRAY CRECE"
asteriscos
puts "Ejecutamos: a[10]=999"
a[10] = 999
puts "a=#{a}"
puts "Si asignamos a una posición un array, crea nested array"
a[8] = [30,50]
puts "a=#{a}"
puts "a[8]=#{a[8]}"
puts "a.first = #{a.first} and a.last=#{a.last}"
puts "a.values_at(1,3,7)=#{a.values_at(1,3,7)}"
puts "a.values_at(7,1...5)=#{a.values_at(7,1...5)}"
asteriscos
texto_centrado "Métodos para saber elementos de un array --> size, length"
asteriscos
puts "a.size = #{a.size}"
puts "a.length = #{a.length}"
asteriscos
texto_centrado "Ordenando un array: métodos sort, sort! y sort_by"
asteriscos
words = %w(the quick brown fox jumps over a lazy dog)
puts "Ordenando array..."
sorted_words = words.sort
puts "Sorted_words: #{sorted_words}"
puts "words.sort!: #{words.sort!}"
puts "Si todos los elementos del array no son del mismo tipo se la pega..."
puts "Sin embargo, hay una solucion.... Pasar bloque a sort"
puts "OJO: Tiene sentido ordenar array de distintos tipos? --> Aun asi como hemos dicho se puede hacer"
mix_arr = [1,2,"three","four",5,"six",7]
print "mix_arr.sort!{|x,y| x.to_s <=> y.to_s} = " 
p mix_arr.sort!{|x,y| x.to_s <=> y.to_s}
print "words.shuffle!.sort_by{|x| x.length} = "
p words.shuffle!.sort_by{|x| x.length}
puts "IMPORTANTE: Si hay que ordenar array grande usar SORT_BY por eficiencia"
