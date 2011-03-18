#coding: utf-8
=begin
 Ejemplos de uso de threads en Ruby.
=end
require '../utils/utils'
include Util
asteriscos
texto_centrado "Ejemplo de uso de Threads"
asteriscos

puts "1.- Creación de Threads --- Variables locales del thread y acceso externo"
asteriscos

a = 1
b = 3
c = 5
thread = Thread.new do
  t = Thread.current # Hilo actual
  t[:var1] = a
  t[:var2] = b
  t[:var3] = c
end
thread.join #Ejecutamos el thread
# Accedemos a las variables del thread
puts "t[:var1] = #{thread[:var1]}"
puts "t[:var2] = #{thread[:var2]}"
puts "t[:var3] = #{thread[:var3]}"

asteriscos
texto_centrado "Consultando el estado te los Thread y la lista de ellos"
asteriscos
t1 = Thread.new do
sleep 100
end
t2 = Thread.new do
  puts "FAIL!!!" if Thread.current == Thread.main #Nunca se imprime
  1.upto(1000) {sleep 0.1}
end
num_threads = Thread.list.size
puts "Numero de Threads actuales: #{num_threads}"
puts "Ahora si me imprimo porque el hilo principal sigue vivo" if Thread.list.include? Thread.main
puts "Soy el hilo principal" if Thread.current == Thread.main
asteriscos
texto_centrado "Mostramos estado de hilos"
texto_centrado "Estado t1 = #{t1.status}"
texto_centrado "Estado t2 =  #{t2.status}"
asteriscos

Thread.kill(t1)          # Matamos hilo t1...
Thread.pass              # ...y pasamos ejecucion a t2
t3 = Thread.new do
  sleep 20
  Thread.exit            # Salimos del hilo
  puts "Nunca me voy a imprimir!"
end
Thread.kill(t2)          # Matamos t2


asteriscos
texto_centrado "Calculo del Factorial de 1000 en un hilo"
asteriscos

fact1000 = Thread.new do
    begin
      tot = 1
      1.upto(1000) {|n| tot*=n}
      puts "El Factorial(1000) es: #{tot}"
    rescue
      puts "Excepcion...."
    end
end

sleep 0.01
if fact1000.alive?
  fact1000.raise "Stop!!! Demasiado lento el calculo"
else
   puts "Calculo exitoso"
end

asteriscos
texto_centrado "Obteniedo valor devuelto por un Thread"
asteriscos
max = 10000
thr = Thread.new do
  sum = 0
  1.upto(max) { |i| sum += i }
  sum
end
guess = (max*(max+1))/2
print "Formula es "
if guess == thr.value #Valor devuelto por thread
  puts "OK."
else
  puts "KO."
end
