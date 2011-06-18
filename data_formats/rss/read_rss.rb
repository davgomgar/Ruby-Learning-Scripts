#coding: utf-8
=begin
 Ejemplo de parseo de un Feed de RSS. Se utiliza Open-uri para leer la URL y la librería estándar RSS para el parseo
=end

require 'open-uri'
require "rss"
#URL que contendrá el RSS a parsear
URL = "http://barrapunto.com/index.rss"
open(URL) do |url|
  response = url.read
  #Obtenemos el feed parseado
  feed = RSS::Parser.parse(response, false)
  puts "Canal: #{feed.channel.title}"
  feed.items.each_with_index do |item, idx|
    puts "#{idx}: #{item.title}"
  end
end