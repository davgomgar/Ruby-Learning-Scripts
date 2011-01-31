#coding: utf-8  
=begin 
  Ejemplo de uso de metodos para eliminar caracteres de fin de línea y otros caracteres extraños
=end
require '../utils/utils'
include Util  
asteriscos
texto_centrado "Eliminación de fin de línea con chop"
asteriscos
cadena = "Esta es  una cadena con un fin de línea \n"
print cadena.chop!
puts
asteriscos
texto_centrado "Si el caracter anterior a \\n es \\r tambien lo elimina"
cadena = "Esta es  una cadena con un fin de línea \r\n"
print "antes del chop!: " + cadena
print "despues chop!: " + cadena.chop!
asteriscos
texto_centrado "Pero hay un problema: Chop ELIMINA EL ULTIMO CARACTER AUNQUE NO SEA FIN DE LINEA"
asteriscos
cadena = "Esta es una cadena sin fin de linea"
print "Antes del chop: " + cadena
print "Despues del chop: " + cadena.chop!
asteriscos
texto_centrado "Para eso tenemos el metodo CHOMP ---> Elimina el ultimo caracter SOLO SI ES FIN DE LINEA"
asteriscos
cadena = "Esta es una cadena sin fin de linea"
print "Antes del chomp: " + cadena
print "Ejecutando chomp: " + cadena.chomp #chomp! devuelve nil si no elimina nada y la cadena si elimino fin de linea
asteriscos
texto_centrado "A estos metodos les podemos pasr una cadena que marcarian los terminadores de linea y los eliminaria"
asteriscos
cadena = "blablaxy"
puts "Suponemos que xy son terminadores de linea --> La cadena actualmente vale: #{cadena}"
puts "Despues de cadena.chomp 'xy': #{cadena.chomp 'xy'}"
