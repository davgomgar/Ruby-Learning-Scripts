#coding: utf-8
require "rexml/document"
require "rexml/streamlistener"
include REXML
class MyListener
  include REXML::StreamListener

  def tag_start(*args)
    puts "Comienza Etiqueta: #{args.map {|x| x.inspect}.join(", ")}"
  end

  def text(data)
    return if data =~ /^\w*$/
    abbrev = data[0..40] + (data.length > 40 ? "..." : "") #abreviatura o mostramos todos
    puts "  texto   :   #{abbrev.inspect}"
  end
end

listener = MyListener.new
file = File.new "books.xml"
puts Document.parse_stream(file, listener)