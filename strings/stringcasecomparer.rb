#coding: utf-8
=begin
 Ejemlo en el que se obligará a que todas las comparaciones de ruby sean Case Sensitive.
 A modo de ejemplo se reabre la clase String, y se reimplementa el operador <=>
=end
class String
  def <=>(other)
    casecmp(other)
  end

  def ==(other)
    casecmp(other) == 0
  end
end

str1 = "Español"
str2 = "español"
puts (str1==str2)? "Iguales" : "Distintos"
#Al ser iguales usando <=> debe devolver 0
puts str1<=>str2
