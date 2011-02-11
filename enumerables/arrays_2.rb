#coding: utf-8
=begin
 Se mostrará en este fichero algunas de las operaciones con Arrays:
  - Selección de elementos por criterio (detect/find y select/find_all)
  - Búsqueda con grep
  - Máximo y mínimo de un array (max y min)
  - Mapeo de array (métodos map y collect)
=end
require '../utils/utils.rb'
include Util
asteriscos
texto_centrado "Selección de elementos que cumplan Criterios"
asteriscos
puts "Inicializamos array a con enteros del 1 al 10..."
#Array de enteros del 1 al 10
a = Array.new(10) {|i| i+1}
#Detectar primer multiplo de 3
p "Detectar primer múltiplo de 3"
print "a.detect{|x| x%3 == 0} ="
puts a.detect{|x| x%3 == 0}
puts "El método detect tiene un alias: find"
print "a.detect{|x| x%3 == 0 && x>3} = "
puts a.detect{|x| x%3 == 0 && x>3}
#Detectar TODOS los elementos pares
p "Detectando todos los pares del vector"
even = a.select{|x| x % 2 == 0}
print "a.select{|x| x % 2 == 0} = "
p even
odds_find_all = a.find_all{|z| z % 2 == 1}
print "a.find_all{|x| x % 2 == 1} = "
p odds_find_all
asteriscos
texto_centrado "También podemos usar método GREP para buscar"
asteriscos
puts "Grep llama al operador de igualdad, no tiene porque recibir una regexp como parámetro"
puts "a.grep(3...7)= #{a.grep(3...7)}"
words = %w(this is a test for grep array method)
print "Words = "
p words
print "words.grep(/is/) = "
p words.grep(/is/)
puts "Grep también puede recibir un bloque, y devuelve array de las expresiones del bloque"
print "words.grep(/is/) {|word| word.length * 2} = "
p words.grep(/is/) {|word| word.length * 2}
asteriscos
texto_centrado "Método reject es el opuesto a select ---> Elimina los que cumplen condicion ---> Existe tambien reject!"
asteriscos
nums = a.dup
odds = nums.reject{|x| x[0] == 0} #Accedemos al bit menos significativo...
print "nums.reject{|x| x[0] == 0} = "
p odds
print "nums.reject!{|x| x[0] == 0} = "
p nums.reject!{|x| x[0] == 0}
asteriscos
texto_centrado "Máximo y mínimo (métodos min y max) ---> Pueden recibir opcionalmente un bloque"
asteriscos
puts "a.max=#{a.max}"
puts "odds.min = #{odds.min}"
print "words.max{|x,y| x.length <=> y.length} = "
p words.max{|x,y| x.length <=> y.length}
puts "words.min = #{words.min}"
asteriscos
texto_centrado "Uso de collect / Map"
asteriscos
w = %w(alpha bravo charlie delta echo foxtrot)
puts "W = #{w}"
puts "Ejecuntando iniciales=w.collect{|x| x[0]}..."
iniciales = w.collect{|x| x[0]}
print "...Y mostrando por pantalla el resultado... "
p iniciales
puts "Convirtiendo array original a mayusculas..."
w.map!{|x| x.upcase}
print "... Y mostrando por pantalla resultado..."
p w
