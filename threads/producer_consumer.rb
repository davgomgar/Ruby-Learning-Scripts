#coding: utf-8
=begin
 Ejemplo de implementación del problema del Productor - Consumidor con Ruby
=end
require 'thread'
require '../utils/utils'
include Util
asteriscos
texto_centrado "Ejemplo del Problema del productor - consumidor"
asteriscos

buffer = SizedQueue.new(22)
#Hilo productor
producer_thread = Thread.new do
  item = 0
  loop do
    sleep rand 0
    puts "Productor genera item #{item}"
    buffer.enq item
    item += 1
  end
end
#Hilo consumidor
consumer_thread = Thread.new do
  loop do
    sleep (rand 0) + 2
    item = buffer.deq
    puts "Consumidor obtiene  item = #{item}"
  end
end
#Ejecuta 1 minuto y muere
sleep 60