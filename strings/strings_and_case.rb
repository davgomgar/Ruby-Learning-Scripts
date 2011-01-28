#coding: utf-8
=begin
 Ejemplos para mostrar funcionamiento de mayúsculas y minúsculas en cadenas de caracteres
=end
str = "string"
#Paso a mayusculas
str2 = str.upcase
puts "Cadena original (STR) #{str} -- pasada a mayusculas (STR2) #{str2}"
#Paso de la cadena en mayusculas a minusculas 
str3 = str2.downcase
puts "Cadena original (STR2) #{str2} -- pasada a minusculas (STR3) #{str3}"

#Ejemplos metodos bang
str_copy = str3.dup
puts "Str_copy: #{str3} y str_copy.upcase! #{str_copy.upcase!}"

str_copy = str3.dup
# "IMPORTANTE: se mostraran ambos en mayusculas ya que en se ejecuta el upcase! antes del primer #{str_copy}"
puts "***************************************************************"
puts "Str_copy: #{str_copy} y str_copy.upcase! #{str_copy.upcase!}"

# A continuacion creamos unos metodos en la clase String que nos permitan saber si existen mayusculas, minusculas
# o ambos en una cadena de texto
class String
  #Método que indica si la cadena contiene caracteres en minuscula
  def has_downcase?
   if self =~/[a-z]/
     true
   else
     false
   end
  end
  #Metodo que indica si la cadena contiene caracteres en mayuscula
  def has_upcase?
    if self =~/[A-Z]/
      true
    else
      false
     end
  end
  #Metodo que indica si la cadena tiene caracteres en mayuscula y en minuscula
  def mixedcase?
     if self =~/[A-Z]/ and self =~/[a-z]/
        true
     else
        false
     end
  end
end
#escribe 3 veces true
nombre = "David"
puts "La palabra 'David' tiene letras minusculas? #{nombre.has_downcase?}"
puts "La palabra 'David' tiene letras minusculas y mayusculas? #{nombre.mixedcase?}"
puts "La palabra 'David' tiene letras mayusculas? #{nombre.has_upcase?}"
