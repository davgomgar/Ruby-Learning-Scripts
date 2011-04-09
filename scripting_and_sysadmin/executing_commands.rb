#coding: utf-8
=begin
 Ejemplo de ejecución de Comandos del S.O desde Ruby. Se mostrará 3 formas de ejecutar dichos comandos:

  1.- Llamada al método system
  2.- Llamada a método ` (backtick)
  3.- Llamada al método exec
=end
require '../utils/utils'
include Util
asteriscos
texto_centrado "Ejecución de Comandos del Sistema Operativo desde Ruby"
texto_centrado "1.- Método system"
asteriscos
puts "Al ejecutar un comando con system se ejecuta en una subshell"
#Al ejecutar un comando puedes pasarlo todo en un sólo parámetro, o bien puedes pasar un segundo parámetro
#a la llamada a system que incluya los parámetros opcionales del comando del SO...
system("ls -l")
system("clear")
system("ls","-l")
#...Sin embargo hay alguna diferencia, como en el caso que se muestra a continuación
system("echo *")
system("echo","*")
asteriscos
texto_centrado "2.- Backtick `"
asteriscos
puts "Si ejecutamos con backtick lo que devuelve el comando del SO podemos almacenarlo en una variable"
listado = `ls -l`
puts "El valor de listado es: #{listado}"
puts "El backtick es un método como cualquier otro y podemos redefinirlo"
puts "Con %x podemos definir un comando en vez de utilizar backtick. Se usa de esta forma si el comando tiene comillas"
now = %x(date) # Esta línea equivale a `date`
puts now
asteriscos
texto_centrado "3.- Método exec"
asteriscos
puts "Al ejecutar un comando con exec se ejecuta en la shell actual. Eso impide que se ejecute el código que pueda
haber despues de la llamada a exec"
exec("ls -l")
puts "Nunca me escribes"