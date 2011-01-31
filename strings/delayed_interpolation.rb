#coding: utf-8
=begin 
  Ejemplos para mostrar como se puede retrasar la evaluacion en la interpolación de cadenas
=end
require '../utils/utils'
include Util
asteriscos
texto_centrado "Existen 2 formas de retrasar la interpolación en cadenas."
texto_centrado "1.- Uso de Procs"
asteriscos
coords = proc{|x,y,z| "Las coordenadas (x,y,z) son: (#{x},#{y},#{z})"}
puts coords.call(9,6,3)
asteriscos
texto_centrado "2.- Crear cadena entre comillas simples y usar eval envolviendola con comillas dobles"
asteriscos
str = 'Me llamo #{nombre} y tengo la nacionalidad #{nacionalidad}'
nombre,nacionalidad = "David","Española"
puts eval('"' + str + '"')
