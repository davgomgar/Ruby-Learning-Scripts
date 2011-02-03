#coding: utf-8
=begin
 Ejemplo de algunas operaciones a realizar con BigDecimal
=end

require '../utils/utils'
include Util
require 'bigdecimal'
asteriscos
texto_centrado "BIGDECIMAL --> No sufre del problema de redondeo de los Float"
asteriscos
a = BigDecimal("3.2")
b = BigDecimal("2.1")
puts "3.2-2.1==1.1" if a-b == 1.1
puts "a = #{a}"
puts "a.to_s = #{a.to_s}"
puts "a.to_s('F') = #{a.to_s('F')}"
puts "Metodo precs de BigDecimal --> Devuelve array [num bytes usado, num digitos significativos]"
