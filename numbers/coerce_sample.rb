#coding: utf-8
=begin
 Ejemplo de uso de Coerce. Lo vamos a hacer para un ejemplo discutible, Poder aplicar operaciones matematicas
entre Strings y Numeros (enteros o float).
 Si creamos una clase propia numérica, si que se debe implementar coerce.
=end

require '../utils/utils.rb'
include Util

asteriscos
texto_centrado "Ejemplo de implementación de Coerce"
asteriscos

class String
  #coerce devuelve array de la siguiente forma: [argumento, receptor convertido a clase correcta]
  def coerce(num)
    if self['.']
      [num, Float(self)]    
    else  
      [num, Integer(self)]
    end
  end
end

asteriscos
texto_centrado "Probando coerce"
asteriscos
print "Valor de 23 * '1.22' es: "
puts 23*"1.22"
print "Valor de 23 + '1.22' - '1.34' es: "
puts 23+"1.22"-"1.34"
