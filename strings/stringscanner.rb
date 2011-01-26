#coding: utf-8
require 'strscan'
=begin
 Ejemplo hecho para tokenizar una frase en palabras. Se hace de 2 formas:
  1.- Utilizando la clase StringScanner (necesita el require 'strscan'. De esta forma el scanner tiene "memoria".
  Al partir la palabra se queda ahí hasta indicarle que vuelva a iterar. En el caso de no indicarle que lo siguiente que
  se va a encontrar es un separador (no palabra ), no avanzaría mostrando una única palabra
  2.- Utilizando string.scan(regexp) --> No tiene la "memoria" del StringScanner y sigue avanzando tras cada iteracion
=end
str = "Esto es una prueba. Tengo separadores, \n saltos de linea y palabras"
scanner = StringScanner.new(str)
counter = 0;
loop do
   counter+=1
   word = scanner.scan(/\w+/)
   break if word.nil?
   puts "Palabra numero #{counter}: #{word}" 
   #Leemos el separador para continuar leyendo palabras
   #En caso de no hacerlo, el script finalizaría mostrando una única palabra
   separator = scanner.scan(/\W+/)
   break if separator.nil?
end

#Otra forma de hacerlo más compacta es la siguiente
puts "*************\nForma 2\n*************\n"
counter = 0
str.scan(/\w+/) do |word|
  counter += 1
  puts "Palabra numero #{counter}: #{word}" 
end


