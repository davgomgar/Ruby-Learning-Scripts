#coding: utf-8
=begin
 Ejemplo de manejo de Procesos en ruby.
 Se mostrará la forma de manipular procesos del sistema operativo mediante Ruby
=end
require '../utils/utils'
include Util
asteriscos
texto_centrado "Creación de procesos en Ruby (fork)"
asteriscos

puts "Hay 2 formas de crear procesos en ruby "
puts "1.- fork sin bloque"
pid = fork
if pid == nil
  puts "Soy el proceso hijo"
else
  puts "Soy el proceso padre"
end
puts "2.- Fork con bloque"
fork do
  puts "Yo soy el proceso hijo... A ver si aparece mi padre..."
end
puts "... Aqui el proceso padre"
asteriscos
texto_centrado "Esperar por procesos (wait)"
asteriscos
puts "Se puede hacer que se espere a la finalización de un proceso mediante llamada a wait"
pid1 = fork {sleep 5; exit 3}
pid2 = fork {sleep 1; exit 3}
puts "Esperando que termine pid1..."
Process.waitpid(pid1, Process::WNOHANG)
puts "Pid1 ha terminado"

ppid = Process.pid
fork do
  if ppid = Process.ppid
    puts "El PID de mi proceso padre es #{ppid}"
    puts "Y mi PID es #{Process.pid}"
  else
     puts "No se quien es mi padre!!!"
  end
end

puts "NOTA: El metodo Process.kill sirve para enviar señales a los procesos (Análogo comando kill)"