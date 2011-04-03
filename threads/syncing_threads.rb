#coding: utf-8
=begin
 Ejemplos de sincronización de threads en Ruby.
=end
require '../utils/utils'
include Util
asteriscos
texto_centrado "Sincronización de hilos en Ruby"
asteriscos
x = 0
thread = Thread.new do
  1.upto(6000) { x = x + 1}
end

thread2 = Thread.new do
  1.upto(6000) {x = x + 1}

end
#Esperamos por ambos hilos
thread.join
thread2.join
puts "El valor de X es: #{x}"