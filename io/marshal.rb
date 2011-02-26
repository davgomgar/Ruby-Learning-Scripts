=begin
 Ejemplo de uso de serialización usando Marshal.
 No se pueden serializar objetos de bajo nivel: Procs, IO, Binding, objetos Singleton, inner Clases
 ni módulos
=end
# array of elements [composer, work, minutes]
works = [["Leonard Bernstein","Overture to Candide",11],
         ["Aaron Copland","Symphony No. 3",45],
         ["Jean Sibelius","Finlandia",20]]
File.open("marshal","w") do |file|
  Marshal.dump(works,file)
end

#...Long time after....
new_works = nil
File.open("marshal","r") do |file|
  new_works = Marshal.load(file)
end
p new_works