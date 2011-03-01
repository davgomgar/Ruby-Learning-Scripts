require 'yaml'
#
#= Clase *People* 
#== Clase que almacenara la informacion de las personas a hacer persistir en disco
#
class People
  attr_accessor :name,:age,:address,:gender
end
#
#== Clase que se encargara de mostrar uso de YAML
#
class YAMLSample
#
#==  El parámetro recibido indicara el fichero en el que se hara la persistencia
#=
  def initialize(path)
    raise  ArgumentError, "El fichero ya existe" if File.exists?(path)
    @path = path
    store_init
  end

  def store_init
    @people ||= Array.new
    yo = People.new
    yo.name= "David Gomez"
    yo.age= 33
    yo.address="Celestino Mendizabal 12"
    yo.gender="Hombre"
    @people << yo 
    luisa = People.new
    luisa.name="Luisa Gonzalez"
    luisa.age = 22
    luisa.address="Fernandez Ladreda 13"
    luisa.gender="Mujer"
    @people << luisa
    paula = People.new
    paula.name="Paula Sanchez"
    paula.age=23
    paula.gender="Mujer"
    paula.address="Julian Claveria 33"
    @people << paula
    @yaml_string = YAML::dump(@people)
    File.open(@path,"w") do |file|
      file.write @yaml_string
    end
  end

#
#== Metodo que carga la informacion del PStore en una variable de instancia, la cual mostraremos en pantalla
#para ver que han ido bien las 2 partes de la persistencia, tanto grabar en disco como la carga de datos
#
  def load
      @people_loaded = YAML::load_file(@path)
  end
#
#== Metodo para inspeccionar el valor de una variable que deberia existir despues de ejecutar el metodo load.
#
  def inspect_people_loaded
    if instance_variable_defined?(:@people_loaded) 
      then  puts @people_loaded.inspect
    else 
      puts "No existe la variable buscada porque no se ha hecho bien la persistencia"
    end
  end
end

store = YAMLSample.new(Dir.pwd+File::SEPARATOR+"store.txt")
store.load
store.inspect_people_loaded
