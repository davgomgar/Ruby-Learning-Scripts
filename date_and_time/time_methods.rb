#coding: utf-8
=begin
 Ejemplos de uso de métodos de la clase Time.
=end
require "date"
require '../utils/utils'
include Util
asteriscos
texto_centrado "Implementación de algunos ejemplos de uso de métodos de la clase Time"
asteriscos
now = Time.now
puts "Es lunes? #{now.monday?}"
puts "Es martes? #{now.tuesday?}"
puts "Es miercoles? #{now.wednesday?}"
puts "Es jueves? #{now.thursday?}"
puts "Es viernes? #{now.friday?}"
puts "Es sabado? #{now.saturday?}"
puts "Es domingo? #{now.sunday?}"

asteriscos
texto_centrado "Se pueden sumar enteros a un Time obteniendo otro Time"
asteriscos

class Fixnum
  def days
    self * 60 * 60 *24
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end
end

two_days = now + 2.days
puts two_days.to_s
ten_minutes_ago = now - 10.minutes
puts ten_minutes_ago.to_s

asteriscos
texto_centrado "Ruby tiene métodos para obtener el día de la semana / mes etc"
asteriscos
puts "fecha.year = #{now.year}"
puts "fecha.month (mon es sinonimo) = #{now.month}"
puts "fecha.day (mday es sinonimo) = #{now.day}"
puts "fecha.wday = #{now.wday}"
puts "fecha.yday (dias transcurridos del año) = #{now.yday}"
asteriscos
texto_centrado "Para otras cosas (Ejemplo, semana del año) esta el metodo Time#strftime"
asteriscos
week = now.strftime("%U")
puts "Nos encontramos en la semana del año #{week}"
asteriscos
texto_centrado "Para saber si año es bisiesto se usa Date.leap? --> Hay que incluir date"
asteriscos

puts "Es 2011 bisiesto? #{Date.leap? 2011}"
puts "Es 2012 bisiesto? #{Date.leap? 2012}"
