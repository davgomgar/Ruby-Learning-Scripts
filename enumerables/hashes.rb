#coding: utf-8
=begin
 Se mostrará en este fichero algunas de las operaciones con Hash:
  - Instanciación
  - Acceso a elementos del hash (Método [] y fetch)
  - Borrado
  - Selección de elementos por criterios --> Igual que en Array
  - Fusión de 2 hashes en otro (merge)
=end
require '../utils/utils.rb'
include Util
asteriscos
texto_centrado "Ejemplos de uso de Hash en Ruby"
asteriscos
h = Hash.new
p h.class
h2 = {:uno => 1, :dos => 2}
puts "Definimos h2 = {:uno => 1, :dos => 2}"
print "h2.inspect = #{h2.inspect}\n"
puts "h2[:uno] = #{h2[:uno]}"
puts "Valor por defecto de un hash cuando no queremos nil --> Se pasa como parámetro en Hash.new(valorDefecto)"
h3 = Hash.new("default")
puts "h3[:hola] = #{h3[:hola]}"
puts "Método Fetch --> Lanza IndexError si accedemos a un valor no existente"
begin
  h3.fetch :adios
rescue IndexError => e  
  puts "Lanzado IndexError --> No existe la clave :adios en el Hash"
end
puts "... Si pasamos segundo parámetro al fetch, no lanza excepción, devuelve ese valor como por defecto"
puts "h3.fetch(:adios,'no disponible') = #{h3.fetch(:adios,'no disponible')}"
asteriscos
texto_centrado "Dar valor a una clave del hash SOLO SI NO EXISTE"
asteriscos
print "h2=#{h2}\n"
puts " Ejecutamos h2[:tres]||=3 "
h2[:tres]||=3
print "h2=#{h2}\n"
puts " Ejecutamos h2[:uno]||=1111 "
h2[:uno]||=1111
print "h2=#{h2}\n"
asteriscos
texto_centrado "Para borrar existen: clear, delete, delete_if, reject, reject! y shift"
texto_centrado "Funcionan igual que en Arrays --> ver en ejemplos de array"
asteriscos
puts "Conversión hash --> Array"
arr = h2.to_a
print "h2.to_a = #{arr}\n"
puts "... Podemos obtener array con keys..."
print "h2.keys = #{h2.keys}\n"
puts "... Y también array con values..."
print "h2.values = #{h2.values}\n"
asteriscos
texto_centrado "Selección elementos por criterios: detect (find), select, (find_all), grep, min, max, and reject --> Igual que array"
asteriscos
puts "Merge de 2 hashes"
dict = {"base"=>"foundation", "pedestal"=>"base"}
added = {"base"=>"non-acid", "salt"=>"NaCl"}
new_dict = dict.merge(added)
p new_dict
