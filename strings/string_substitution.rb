#coding: utf-8
=begin
 En este script se mostrarán ejemplos de como se pueden realizar sustituciones en cadenas en Ruby.
=end
#1.- Utilizando método sub --> Sustituye primera aparición de la Regexp
require '../utils/utils'
include Util
asteriscos
texto_centrado("Ejemplos usando el método SUB --> Primera aparición en cadena")
asteriscos
food = "eggs, bacon and spam"
s1 = food.sub(/spam/,"ham")
puts s1
s2 = s1.sub(/(\w+), (\w+)\s*/, '\2, \1 ')
puts "Reordenamos usando sub: #{s2}"
str = "Don't forget the spam"
str2 = str.sub(/spam/) {|match| match.reverse}
puts "Ahora ejemplo de sub con block: #{str2}"

#2.- Sustitucion GLOBAL (Método GSUB)
# Hasta ahora el método sub solo sustituia la primera aparición. gsub sustituye todas las apariciones
asteriscos
texto_centrado("Ejemplos usando GSUB --> Todas las apariciones en cadena")
asteriscos
password = "alfalfa abracadabra"
pass2 = password.gsub(/a[bc]/,"xx")
puts pass2
pass3 = pass2.gsub(/[lfbcdr]/) {|letter| letter.upcase + "*"}
puts pass3

#Tanto sub como gsub tienen métodos ! que no crean otra cadena, modifican la actual
pass3.gsub!(/\*/){|asterisk| asterisk = '---'}
puts pass3
