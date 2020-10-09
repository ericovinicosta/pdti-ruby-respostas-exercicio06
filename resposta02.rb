=begin
2. Classe Quadrado: Crie uma classe que modele um quadrado:
a. Atributos: Tamanho do lado
b. Métodos: Mudar valor do Lado, Retornar valor do Lado e calcular Área;
=end
class Quadrado
  attr_accessor :lado

  def initialize(lado)
    @lado = lado.to_f
  end

  def mudar_lado(novo_lado)
    @lado = novo_lado
  end

  def mostra_lado
    @lado
  end

  def area
    @lado ** 2
  end
end

quadrado = Quadrado.new 4
print "Informe o tamanho do lado: "

lado = gets.to_i

quadrado.mudar_lado lado

puts quadrado.mostra_lado

puts "#{quadrado.area}"