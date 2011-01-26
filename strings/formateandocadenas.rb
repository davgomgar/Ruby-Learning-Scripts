#coding: utf-8
=begin
 Ejemplo 1.- Uso de sprintf --> SE utiliza igual que en C
=end
nombre = "David"
edad = 33
yo = sprintf("Mi nombre es %s y tengo %d años",nombre,edad)
puts yo

=begin
 Ejemplo 2 .- Ajustando a la izda, a la derecha y centrando
=end

str = "Mi Cadena-de-texto"
#Cotiene 18 caracteres
puts str.length
puts str.ljust(32) #Muestra la misma ya que ajusta a izda.
puts str.center(32) # Completa con igual numero de blancos a izda y derecha
puts str.rjust(32) # Ajusta a derecha --> Padding con blancos al inicio
#A los metodos vistos de formateo en el ejemplo anterior se les puede pasar otro
#parametro que indica el caracter que hara el relleno (si se omite es un blanco)
puts str.ljust(32,'*')
puts str.center(32,'*')
puts str.rjust(32,'*')
