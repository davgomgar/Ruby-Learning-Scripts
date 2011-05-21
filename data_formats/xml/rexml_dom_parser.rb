#coding: utf-8
=begin
  Ejemplo de uso de la librería estandar REXML para parsear el fichero books.xml
  En este ejemplo se usará un parser de tipo DOM --> Se carga el arbol del documento entero en memoria
=end
require '../../utils/utils'
include Util

#incluimos libreria REXML para parsear de forma DOM-like
require 'rexml/document'
include REXML
file = File.new("books.xml")
parser =  Document.new(file)
#obtenemos raiz
root = parser.root
puts root.attribute :shelf #obtenemos atributo shelf del nodo raiz
#iteramos por nodos seccion y pintamos el valor de nombre de la seccion
parser.elements.each("library/section") {|x| puts x.attribute :name}
#Iteramos por los libros y mostramos el ISBN y el titulo y autor del libro
parser.elements.each("*/section/book") do |book|
 asteriscos
 datos = sprintf("ISBN: %s", book.attribute("isbn"))
 datos << sprintf("\nTitulo: %s", book.elements["title"].text)
 datos << sprintf("\nAutor: %s", book.elements["author"].text)
 puts datos

end