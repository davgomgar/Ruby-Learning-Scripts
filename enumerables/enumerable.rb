#coding: utf-8
=begin
  Ejemplo en el que añadimos un método al módulo Enumerable. 
  El método iterará por todo el enumerable y clasifica los elementos en función del bloque pasado 
  como parámetro
=end
module Enumerable
  def classify(&block)
    hash = {}
    self.each do |x|  
        result = block.call(x)
        (hash[result]||=[]) << x
    end
    hash
  end
end

#Ahora mostramos un ejemplo de uso con un Array (Array hace mix-in de enumerable)
words = %w(naranja pera manzana fresa melocoton frambuesa banana cereza)
puts "Clasifica por longitud....."
classified = words.classify {|word| word.length}
p classified
puts "Ahora clasifica por número de vocales"
num_vowels = words.classify{|w| w.count("aeiou")}
p num_vowels
