=begin
3. Classe Retangulo: Crie uma classe que modele um ceramica:
a. Atributos: LadoA, LadoB (ou Comprimento e Largura, ou Base e Altura, a escolher)
b. Métodos: Mudar valor dos lados, Retornar valor dos lados, calcular Área e calcular Perímetro;
c. Crie um programa que utilize esta classe. Ele deve pedir ao usuário que informe as medidades de um local.
Depois, deve criar um objeto com as medidas e calcular a quantidade de pisos e de rodapés necessárias para o local.
=end
class Retangulo
  attr_accessor :base, :altura

  def initialize (base=0, altura=0)
    @base = base
    @altura = altura
  end

  def area
    @base.to_f * @altura.to_f
  end

  def perimetro
    @base * 2 + @altura * 2
  end
end

ceramica = Retangulo.new

print "Informe a base da cerâmica: "
ceramica.base = gets.to_f
print "Informe a altura cerâmica: "
ceramica.altura = gets.to_f

terreno = Retangulo.new
print 'Informe o comprimeto do terreno: '
terreno.base = gets.to_f
print "Informe a largura do terreno: "
terreno.altura = get.to_f

puts "O tamanho do rodapé é: #{ceramica.perimetro}"
puts "O tamanho do piso é #{ceramica.area}"
