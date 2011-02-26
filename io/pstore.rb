require 'pstore'
=begin rdoc
= Clase *People* 
== Clase que almacenara la informacion de las personas a hacer persistir en disco
=end
class People
  attr_accessor :name,:age,:address,:gender
end
=begin rdoc
= Clase *PStoreSample*
== Clase que se encargara de realizar la persistencia de los datos a disco.
=end
class PStoreSample
=begin rdoc
    Constructor de clase
==  El parámetro recibido indicara el fichero en el que se hara la persistencia
=end
  def initialize(path)
    raise ArgumentError, "El fichero ya existe" if File.exists?(path)
    #-- Generación inicial del PStore
    @store = PStore.new(path)
    store_init
  end

  def store_init
    personas ||= Array.new
    yo = People.new
    yo.name= "David Gomez"
    yo.age= 33
    yo.address="Celestino Mendizabal 12"
    yo.gender="Hombre"
    personas << yo 
    luisa = People.new
    luisa.name="Luisa Gonzalez"
    luisa.age = 22
    luisa.address="Fernandez Ladreda 13"
    luisa.gender="Mujer"
    personas << luisa
    paula = People.new
    paula.name="Paula Sanchez"
    paula.age=23
    paula.gender="Mujer"
    paula.address="Julian Claveria 33"
    personas << paula
    add_to_store(personas)
  end
=begin rdoc
  Metodo *add_to_store* 
==  Metodo que inicia una transacción en el PStore que permite la escritura y que almacenara
en el PStore los objetos recibidos.
*Nota: El Metodo Transaction de PStore tiene como parametro por defecto read_only=FALSE.Para transacciones solo lectura ver el metodo load de esta clase
=end
  def add_to_store(people) 
    throw ArgumentError "Se esperaba parametro Enumerable" if !people.respond_to?(:each)
    @store.transaction do 
      @store[:people] ||= Array.new
      people.each { |person| @store[:people] << person }
    end
  end 
=begin rdoc
  Metodo *load* 
== Metodo que carga la informacion del PStore en una variable de instancia, la cual
=end
  def load
    @store.transaction do
      @people_loaded = @store[:people]
    end
  end
=begin rdoc
  Metodo *inspect_people_loaded* 
== Metodo para inspeccionar el valor de una variable que deberia existir despues de ejecutar el metodo load.
=end
  def inspect_people_loaded
    if instance_variable_defined?(:@people_loaded) 
      then  puts @people_loaded.inspect
    else 
      puts "No existe la variable buscada"
    end
  end
end

store = PStoreSample.new(Dir.pwd+File::SEPARATOR+"store.txt")
store.load
store.inspect_people_loaded
