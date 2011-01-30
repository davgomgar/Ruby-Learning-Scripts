#coding: utf-8
=begin
 Ejemplos de encriptacion de cadenas de caracteres.
 Se implementarán los siguientes ejemplos:
    1.- CRC de una cadena de caracteres
    2.- Md5 de una cadena de caracteres --> Ya existen ataques
    3.- Sha1 de una cadena de caracteres  --> Idem al anterior
    4.- Sha512 de una cadena de caracteres --> Recomendado si es necesaria seguridad
=end
require './utils'
include Util
require 'digest'
require 'zlib'
include Zlib
cadena = "Cadena a encriptar"
puts "Cadena original: #{cadena}"
asteriscos
texto_centrado "Ejemplo calculando el crc32 de una cadena de texto"
asteriscos
puts "CRC32: #{crc32(cadena)}"
asteriscos
texto_centrado "Ejemplo calculando el md5"
asteriscos
md5 = Digest::MD5
puts "MD5 de la cadena: #{md5.hexdigest(cadena)}"
asteriscos
texto_centrado "Ejemplo de calculo de SHA1"
asteriscos
sha1 = Digest::SHA1
puts "SHA1 de la cadena: #{sha1.hexdigest(cadena)}"
asteriscos
texto_centrado "Ejemplo de calculo de SHA512"
asteriscos
sha512 = Digest::SHA512
puts "SHA512 de la cadena: #{sha512.hexdigest(cadena)}"

