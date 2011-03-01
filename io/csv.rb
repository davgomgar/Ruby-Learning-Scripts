require 'csv'
#= CSVPeopleParser
#== Clase generada a modo de prueba de la librería CSV de Ruby.
class CSVPeopleParser
=begin rdoc
  Constructor de la clase *CSVPeopleParser*
=end
  def initialize(path)
    raise ArgumentError, "No Existe el Fichero" if !File.exists?(path)
    @people = CSV.read(path)
    @path = path
  end
=begin rdoc
  Método para almacenar en el fichero CSV la información actual de la variable _people_
=end
  def save
      csv = CSV.open(@path,"w")
      @people.each { |person| csv << person }
  end
=begin rdoc
  Método que buscará la primera mujer del fichero y le modificará la edad a 18.
=end
  def modify_first_woman_age
   first_woman = @people.find{|person| person[1]=~/Mujer/}
   first_woman[2] = 18
  end
end

csv = CSVPeopleParser.new(Dir.pwd+File::SEPARATOR+"people.txt")
csv.modify_first_woman_age
csv.save
