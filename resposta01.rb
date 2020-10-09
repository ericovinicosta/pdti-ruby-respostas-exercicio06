
=begin
1. Classe Bola: Crie uma classe que modele uma bola:
a. Atributos: Cor, circunferência, material
b. Métodos: trocaCor e mostraCor
=end

class Bola
  attr_accessor :cor, :circunferencia, :material

  def initialize (cor, circunferencia, material)
    @cor = cor
    @circunferencia = circunferencia
    @material = material
  end

  def cor= (cor)
    troca_cor (cor)
  end

  def troca_cor(nova_cor)
    @cor = nova_cor
  end

  def mostra_cor
    @cor
  end

end

bola_branca = Bola.new("vermelha", 12, "plástico")

puts bola_branca.mostra_cor
bola_branca.troca_cor "azul"
puts bola_branca.mostra_cor