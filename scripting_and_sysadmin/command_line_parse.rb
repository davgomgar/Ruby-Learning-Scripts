#coding: utf-8
=begin
 Ejemplo de parseo de  parámetros pasados en la llamada de un script usando
 la librería estandar OptionParser
=end
require 'optparse'
require 'pp'
#almacen de opciones
options ||={}
#Inicializamos parser
optparser = OptionParser.new do |opts|
  opts.banner = "Forma de Uso: command_line.parse.rb [OPTIONS]"
  opts.on("-h", "--help", "Mostrar Ayuda") do
    puts opts
    exit
  end
  #Switch Simple (Se pasa el switch pero no recibe parámetros)
  options[:simple] = false
  opts.on("-s", "--simple", "Switch simple (no parámetros)") do
    options[:simple] = true
  end
  #Parámetro opcional
  options[:optional] = nil
  opts.on("-o", "--optional [OPT]", "Parámetro es opcional") do |opc|
    options[:optional] = opc || "default"
  end
  #Parámetro obligatorio
  options[:mandatory] = nil
  opts.on("-m", "--mandatory param", "Parámetro es obligatorio") do |opc|
    options[:mandatory] = opc
  end
  #Conversión Automática (En ej a Float, tb soporta Integer, Time, etc...)
  options[:float] = 0.0
  opts.on("-f", "--float NUM", Float, "Debe ser un real") do |opt|
    options[:float] = opt
  end
  #Lista de parámetros
  options[:list] = []
  opts.on("-l", "--list a,b,c",Array, "Es una lista separada por comas") do |opt|
    options[:list] = opt
  end
  #Conjunto de parámetros
  options[:set] = :false
  opts.on("-S", "--set YESNO", [:si,:no], "Debe ser un valor del conjunto") do |opt|
    options[:set] = opt
  end
  #Formas negadas
  options[:neg] = false
  opts.on("-n", "--[no-]negated", "Debe ser una de las formas posibles") do |opt|
    options[:neg] = opt
  end
  #Parseamos los switch pasados al script
  opts.parse!(ARGV)
end

pp "Options: ", options


