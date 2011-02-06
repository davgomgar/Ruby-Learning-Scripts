#coding:utf-8
=begin
  Ejemplos de creación de fechas para la clase Time. Se usarán los siguientes métodos de clase:
  Time.mktime, Time.local, Time.gm, Time.utc
=end
require '../utils/utils'
include Util
asteriscos
texto_centrado "Ejemplo de mktime. Los parámetros que se le pueden pasar son (por orden)"
texto_centrado "año,mes,dia,hora,minuto,segundos,microsegundos"
texto_centrado "SOLO EL AÑO ES OBLIGATORIO"
asteriscos
time = Time.mktime(2009)
puts time.to_s
time = Time.mktime(2009,12)
puts time.to_s
time = Time.mktime(2010,12,13)
puts time.to_s
time = Time.mktime(1977,02,03,8,45,13)
puts time.to_s
asteriscos
texto_centrado "Si se intenta pasar argumentos inválidos para crear fecha se lanza la excepción ArgumentError"
asteriscos
begin
  puts "Intentando generar fecha inválida 22-13-2010"
  time = Time.mktime(2010,13,22)
rescue ArgumentError  => e
  puts "ArgumentError lanzado --> Has intentado crear fecha errónea"
end
asteriscos
texto_centrado "Time.mktime y Time.local son sinónimos --> Crean fecha dentro de zona horaria local"
asteriscos
time1 = Time.local(2010,12,13)
time2 = Time.mktime(2010,12,13)
puts "Iguales #{time1.to_s} y #{time2.to_s}" if time1 == time2
asteriscos
texto_centrado "Sin embargo, si las comparamos con fecha creada con UTC o GM..."
asteriscos
gm = Time.gm(2010,12,13)
puts "Distintas #{time1.to_s} y #{gm.to_s}" if gm != time1
asteriscos
texto_centrado "Time.utc y Time.gm son sinónimos"
asteriscos
utc = Time.utc(2010,12,13)
puts "Iguales #{utc.to_s} y #{gm.to_s}" if gm == utc
