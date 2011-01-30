#coding: utf-8
=begin
 Ejemplos de conversion implicita to_str y explicita to_s
=end
require './utils'
include Util
asteriscos
texto_centrado "Conversion implicita: to_str y explicita: to_s"
texto_centrado "Los objetos suelen tener implementado to_s to_str no esta (normalmente) en las clases del Core"
texto_centrado "to_s y to_str no tienen por que devolver el mismo valor"
texto_centrado "to_str es el valor 'REAL' convertido a string y to_s es una 'conversion forzada'"
texto_centrado "Se debe usar to_str en objetos que pueden enmascararse como Strings. Veamos un ejemplo"
asteriscos

class Helium
  def to_str
    "helium"
  end

  def to_s
    "he"
  end
end
puts "Definimos clase Helium con metodos to_s y to_str"
he = Helium.new
puts "Llamada explicta a to_s: #{he.to_s}"
puts "A continuacion ejecutaremos puts 'El elemento es: + he'"
puts "El elemento es: " + he
puts "Funciona ya que se hace la conversion implicita al concatenar con + "



