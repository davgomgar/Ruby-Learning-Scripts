#coding: utf-8
=begin
  Ejemplos de borrado de caracteres en una cadena de texto
=end
require './utils'
include Util
asteriscos
texto_centrado "Ejemplo de borrado de caracteres en cadenas de texto"
asteriscos
str = "To be or not to be"
puts "Cadena inicial: #{str}"
puts "str.delete('o') = #{str.delete('o')}"
puts "str.delete('ob') = #{str.delete('ob')}"
asteriscos
texto_centrado "Ejemplo de eliminar caracteres duplicados"
asteriscos
greeting = "Hello Everyone"
puts "greeting.squeeze = #{greeting.squeeze}"
