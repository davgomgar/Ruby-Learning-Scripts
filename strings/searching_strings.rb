#coding: utf-8
=begin
   Ejemplos de busqueda en cadenas. Se mostrarán varios métodos que sirven para buscar en cadenas de texto además de lo ya visto
hasta ahora.
=end
require './utils'
include Util
asteriscos
texto_centrado("Búsqueda de la posicion de una cadena")
asteriscos
cientifico = "Albert Einstein"
puts "Cadena en la que buscamos: #{cientifico}"
puts "cientifico.index(?A) = #{cientifico.index(?A)}"
print "cientifico.index(?W) = "
puts "nil" if cientifico.index(?W).nil?
puts "cientifico.index(?E) = #{cientifico.index(?E)}"
puts "cientifico.index(?e) = #{cientifico.index(?e)}"
print "cientifico.index('bart') = " 
puts "nil" if cientifico.index('bart').nil?
puts "cientifico.index(/ein/) = #{cientifico.index(/ein/)}"
puts "cientifico.index(/in/) = #{cientifico.index(/in/)}"
#Ahora ejemplos con rindex
puts "cientifico.rindex('A') = #{cientifico.rindex('A')}"
puts "cientifico.rindex('E') = #{cientifico.rindex('E')}"
print "cientifico.rindex('bart') = " 
puts "nil" if cientifico.rindex('bart').nil?
puts "cientifico.rindex(/ein/) = #{cientifico.rindex(/ein/)}"
puts "cientifico.rindex(/in/) = #{cientifico.rindex(/in/)}"
puts "cientifico.rindex(?e) = #{cientifico.rindex(?e)}"
asteriscos
texto_centrado("Existe la subcadena en la cadena a buscar? --> include?")
asteriscos
math = "matematicas"
puts "Cadena completa: #{math}"
puts "Incluye la subcadena tema?: --> #{math.include? 'tema'}"
puts "Incluye la subcadena temario?: --> #{math.include? 'temario'}"
puts "Incluye la subcadena t?: --> #{math.include? ?t}"
asteriscos
texto_centrado "Uso del método scan --> Nos devuelve un array con las ocurrencias"
asteriscos
cadena = "abracadabra"
scanned = cadena.scan(/a./)
puts "Cadena = abracadabra.... \nDespues de cadena.scan(/a./) nos devuelve: #{scanned.inspect}"
print "A scan le podemos pasar un bloque.\n Despues de ejecutar cadena.scan(/a./){|car| print car.upcase} se muestra: "
 cadena.scan(/a./){|car| print car.upcase}
puts
