#coding: utf-8
=begin
 Ejemplo de algunas operaciones a realizar con Números decimales (Float)
 Se implementan las operaciones round_float y la igualdad de números decimales
=end

require '../utils/utils'
include Util

class Float
  
  EPSILON = 1e-6 #EPSILON --> Consideramos 2 numeros iguales si abs(a-b)<EPSILON
  
  def round_float(decimales)
    num_digits = self.to_s.length
   sprintf("%#{num_digits}.#{decimales}f",self).to_f
  end

  def ==(other)
   (self-other).abs<EPSILON
  end
  #Método que permite pasarle la tolerancia que nos apetezca para comprobar si son
  #iguales dos float. Por defecto asignamos valor EPSILON
  def equals?(other,delta=EPSILON)
    (self-other).abs<delta
  end
end

asteriscos
texto_centrado "Ejemplos de uso de los métodos implementados en clase Float en este script"
texto_centrado "Se mostraran round_float, == y equals?"
asteriscos

texto_centrado "1.- Math::PI.round_float"
print "Math::PI.round_float(3)= "
puts Math::PI.round_float(3)
print "Math::PI.round_float(7)= "
puts Math::PI.round_float(7)
asteriscos
texto_centrado "NOTA: En  implementacion == usa EPSILON  = 1e-6"
texto_centrado "2.-   a) Math::PI==(3.15) "
texto_centrado "\t b) Math::PI==3.141593"
asteriscos
print "a) Math::PI==3.15 -->"
puts Math::PI==3.15
print "b) Math::PI==3.1415929-->"
puts Math::PI==3.1415929
asteriscos
texto_centrado " 3.- Uso de equals? "
texto_centrado " a) Math::PI.equals?(3.1415)"
texto_centrado " b) Math::PI.equals?(3.1415,1e-1)"
asteriscos
print " a) Math::PI.equals(3.1415) = "
puts Math::PI.equals?(3.1415)
print " b) Math::PI.equals(3.1415,1e-1) = "
puts Math::PI.equals?(3.1415,1e-1)
asteriscos
texto_centrado "NOTA: Tenemos PRINTF y SPRINTF como en C para formatear directamente en pantalla o para guardar en un String "
asteriscos
