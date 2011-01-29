#coding: utf-8
=begin
 Ejemplos de acceso a elementos de una cadena de texto. Para acceder a posiciones de un String se utiliza
la misma sintaxis que en los arrays ([]), y dentro de los corchetes podemos tener numeros enteros, Ranges,
regexps y Strings
=end

#Si se utilizan enteros para acceder a la cadena el comportamiento es:
#Cadena[indice,longitud] 
#Si longitud es negativo, devuelve NIL
require './utils'
include  Util
asteriscos
texto_centrado("Accediendo con enteros")
asteriscos
nombre_completo = "David Gomez Garcia"
puts nombre_completo[6,3]
puts nombre_completo[7,100]
puts "nil" if nombre_completo[7,-4].nil?
asteriscos
texto_centrado("Usando Ranges")
asteriscos
#Si se usan ranges puede haber tanto enteros positivos como negativos...
puts "Nombre_completo[6..10]: #{nombre_completo[6..10]}"
puts "Nombre_completo[-5..-1]: #{nombre_completo[-5..-1]}"
#... pero el numero MENOR (matematicamente hablando) debe ir a la izda, sino---> NIL
puts  nombre_completo[-1..-6].nil?
asteriscos
texto_centrado("Usando Regexp")
asteriscos
puts nombre_completo[/G...z/]
puts nombre_completo[/G.*a/]
puts "nil" if nombre_completo[/foo/].nil?
asteriscos
texto_centrado("Usando Strings")
asteriscos
puts nombre_completo["ome"]
puts "nil" if nombre_completo["noexiste"].nil?
puts nombre_completo["z Garcia"]
#Como nota final, indicar que estas formas de acceso se pueden utilizar para escribir en la cadena, no solo para leer
nombre_completo[0,5]="Jorge"
puts nombre_completo
