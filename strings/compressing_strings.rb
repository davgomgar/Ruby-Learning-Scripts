#coding: utf-8
=begin 
  Ejemplos para comprimir strings mediate el uso de zlib
=end
require 'zlib'
include Zlib
require './utils'
include Util
asteriscos 
texto_centrado "Ejemplos varios de compresion Deflate.deflate"
asteriscos
long_string = ("abcde"*71 + "defghi"*79 + "ghijkl"*113)*371
compressed1 = Deflate.deflate(long_string, BEST_SPEED)
compressed2 = Deflate.deflate(long_string)
compressed3 = Deflate.deflate(long_string, BEST_COMPRESSION)
puts "Longitud con Best_Speed: #{compressed1.length}"
puts "Longitud sin parametros adicionales: #{compressed2.length}"
puts "Longitud con Best_Compression: #{compressed3.length}"
asteriscos
texto_centrado "Ejemplo de descompresion de String Inflate.inflate"
asteriscos
long_str2 = Inflate.inflate(compressed2)
long_str3 = Inflate.inflate(compressed1)
long_str4 = Inflate.inflate(compressed3)
puts "Longitud de cadena al descomprimir cadena comprimida sin parametros: #{long_str2.length}"
puts "Longitud de cadena al descomprimir cadena comprimida BEST_COMPRESSION: #{long_str3.length}"
puts "Longitud de cadena al descomprimir cadena comprimida BEST_SPEED: #{long_str4.length}"
