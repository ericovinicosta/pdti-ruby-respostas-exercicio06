=begin
4. Classe Pessoa: Crie uma classe que modele uma pessoa:
a. Atributos: nome, idade, peso e altura
b. Métodos: Envelhercer, engordar, emagrecer, crescer.
Obs: Por padrão, a cada ano que nossa pessoa envelhece, sendo a idade dela menor que 21 anos, ela deve crescer 0,5 cm.
=end

class Pessoa

  attr_accessor :nome, :idade, :peso, :altura

  def initialize (nome, idade, peso, altura)
    @nome = nome
    @idade = idade
    @peso = peso
    @altura = altura
  end

  def envelhecer
    @idade += 1
    crescer
  end

  def engordar(peso)
    @peso += peso
  end

  def emagrecer(peso)
    @peso -= peso
  end

  def crescer
    if @idade < 21
      @altura += 0.5
    end
  end

  def to_s
    "Dados: [#{@nome}, #{@idade}, #{@peso}, #{@altura}] "
  end

end

puts 'Informe os dados abaixo'
print "Nome: "
nome = gets.chomp
print "Idade: "
idade = gets.to_i
print "Peso: "
peso = gets.to_f
print "Altura: "
altura = gets.to_f

pessoa1 = Pessoa.new nome, idade, peso, altura
puts pessoa1.to_s

pessoa1.envelhecer

puts pessoa1.to_s