#coding: utf-8
=begin
  Ejemplos de Backreferences en Expresiones Regulares en Ruby
=end
require '../utils/utils'
include Util
asteriscos
texto_centrado "Ejemplo de Backreferences en Expresiones Regulares con Ruby"
asteriscos
str = "a123b45c678"
if str =~ /(a\d+)(b\d+)(c\d+)/
  puts "Matches 1º=#$1 2º=#$2 3º=#$3"
end
asteriscos
texto_centrado "En llamadas a sub / gsub no se pueden usar #$1 etc..."
texto_centrado "En esos casos se utilizan '\\1' etc. Ojo con las comillas simples"
asteriscos
str2 = str.sub(/(a\d+)(b\d+)(c\d+)/,'1º=\1 2º=\2 3º=\3')
puts str2
asteriscos
texto_centrado "Existe posibilidad de no guardar referencia a grupo --> (:?grupo)"
asteriscos
str = "a123b45c678"
puts str.sub(/(a\d+)(?:b\d+)(c\d+)/, "1st=\\1, 2nd=\\2, 3rd=\\3")

asteriscos
texto_centrado "Si el segundo parametro de sub / gsub esta entre comillas dobles, debemos poner doble barra"
texto_centrado "Si no se pone doble barra, lo toma como un número en octal"
asteriscos
str3 = str.sub(/(a\d+)(b\d+)(c\d+)/,"1º=\\1 2º=\\2 3º=\\3")
puts str3
asteriscos
texto_centrado "Hay otra forma de acceder a las BackReferences mas Orientada a Objetos"
texto_centrado "Ver la clase MatchData --> Se comporta como ARRAY PERO NO LO ES!!!"
asteriscos
val = "ddsKobayashipk"
pattern =/(.{,2}[oai])(.+[oai])(.+[oai])(.+[oai])/i
matched_data = pattern.match(val)
puts "Parte antes del match: #{matched_data.pre_match}" #
puts "Parte despues del match: #{matched_data.post_match}"
matched_data.to_a.each{|syl| print syl + '---'}
