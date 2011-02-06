#coding:utf-8   
=begin
 Se utilizará la clase Time para calcular en que día y mes cae la Pascua
=end


  def domingo_pascua(year)
    meses = {:marzo => "Marzo",:abril => "Abril"}
    case year
      when 1583...1699
        m= 22
        n= 2
      when 1700...1799 
        m=23
        n=3
      when 1800...1899
        m=23
        n=4
      when 1900..2099  
        m=24
        n=5
      when 2100...2199
        m=24
        n=6
      when 2200...2299
        m=25
        n=0
    end

    a = year % 19
    b = year % 4
    c = year % 7
    d = (19*a + m) % 30
    e = (2*b+4*c+6*d+n) % 7
    if d+e<10
      dia = (d+e+22)
      mes = :marzo
    else 
      dia = (d+e-9)
      mes = :abril
    end
    #excepciones
    dia = 19 if dia == 26 && mes == :abril 
    dia = 18 if d == 28 && e == 6 && a > 10 && dia == 25 && mes == :abril 
    puts "El domingo de Pascua del año #{year} cae de: #{dia} de #{meses[mes]}" 
  end

domingo_pascua 2011
