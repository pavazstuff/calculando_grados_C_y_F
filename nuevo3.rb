class CalcularGrados
  def initialize(entrada)
    @grados = entrada
  end
  def fahrenheitToCentigrados
    return (@grados - 32) / 1.8000
  end
  def centigradosToFahrenheit
    return @grados * 1.8000 + 32.0
  end
end

option = true

while option do
  puts "-----------------------------------------------"
  puts "Elije una opcion:"
  puts "1. Convertir Fahrenheit a Centigrados"
  puts "2. Convertir Centigrados a Fahrenheit"
  puts "9. Cerrar"
  
  num = gets
  
  if num.to_i == 1 then
    puts "Introduce los grados:"
    g = gets
    Convertir = CalcularGrados.new(g.to_f)
    r = Convertir.fahrenheitToCentigrados
    puts "resultado = #{r}"
  end
    
   if num.to_i == 2 then
    puts "Introduce los grados:"
    g = gets
    Convertir = CalcularGrados.new(g.to_f)
    r = Convertir.centigradosToFahrenheit
    puts "resultado = #{r}"
  end
  
  if num.to_i == 9 then option = false end
    
  if num.to_i != 1 and num.to_i != 2 and num.to_i != 3 then
    puts "Intente nuevamente."
  end
end