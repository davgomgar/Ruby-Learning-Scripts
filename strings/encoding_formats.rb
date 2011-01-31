#coding: utf-8
=begin
 Ejemplo de implementación de codificacion / decodificacion de sistemas de codificacion comunes.
 Se implementará ejemplo con Base64 y con UUENCODE
=end
require '../utils/utils'
include Util
str = "\007\007\002\abdce fasfa"
asteriscos
texto_centrado "Ejemplo de codificacion / decodificacion a Base64"
asteriscos
puts "Cadena inicial: #{str.dump}"
data = [str]
data.freeze #Evitamos que se modifique el valor de data
base64 = data.pack("m") #convierte array de bytes a cadena Base64
puts "Base64: #{base64}"
decoded = base64.unpack("m") #devuelve array de bytes de la cadena en base64
puts "Decodificado desde Base64: #{decoded[0].dump}"
#El método DUMP hace que se muestren los caracteres especiales (\a -- ALARMA) en pantalla
#Si no se empleara dicho metodo no se mostrarían bien en pantalla dichos caracteres
asteriscos
texto_centrado "Ejemplo con UUENCODE / UUDECODE"
asteriscos
uuencoded = data.pack("u")
puts "Uuencoded: #{uuencoded}"
uudecoded = uuencoded.unpack("u")
puts "Decodificado de datos en uuencode: #{uudecoded[0].dump}"
