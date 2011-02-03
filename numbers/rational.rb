#coding: utf-8
=begin
 Ejemplo de algunas operaciones a realizar con Rational
=end

require '../utils/utils'
include Util
require 'bigdecimal'
asteriscos
texto_centrado "Rational --> Permite trabajar con números fraccionarios"
asteriscos
a = Rational(1,3) # un tercio
b = Rational(3,4) #tres cuartos
print "1/3 + 3/4 = " 
puts a+b
print "1/3 - 3/4 = " 
puts a-b
print "1/3 * 3/4 = " 
puts a*b
print "1/3 / 3/4 = " 
puts a/b
print "raiz cuadrada de 9/16 = "
puts Rational(9,16)**0.5
