=begin
Classe Bichinho Virtual:Crie uma classe que modele um Tamagushi (Bichinho Eletrônico):
a. Atributos: Nome, Fome, Saúde e Idade
b. Métodos: Alterar Nome, Fome, Saúde e Idade; Retornar Nome, Fome, Saúde e Idade
Obs: Existe mais uma informação que devemos levar em consideração, o Humor do nosso tamagushi,
este humor é uma combinação entre os atributos Fome e Saúde, ou seja, um campo calculado,
então não devemos criar um atributo para armazenar esta informação por que ela pode ser calculada a qualquer momento.
=end
class Tamagushi
  attr_accessor :nome, :fome, :saude, :idade
  attr_writer :humor

  def initialize (nome)
    @nome = nome
    @fome = 0
    @saude = 100
    @idade = 0
    @humor = 0.15
  end

  def alterar_nome (nome)
    @nome = nome
  end

  def alterar_fome (fome)
    @fome <= 100 ? @fome += fome : @fome
  end

  def alterar_saude (saude)
    @saude > 0 ? @fome -= saude : @fome
  end

  def define_humor
    @humor = (@fome.to_f * 2 + @saude.to_f)/2
  end

  def alterar_idade
    @idade += 1
  end

  def humor
    resposta = ""
    case @humor
    when 1...10
      resposta = "zangado"
    when 10...30
      resposta = "chateado"
    when 30...50
      resposta = "tranquilo"
    when 50...80
      resposta = "alegre"
    else
      resposta = "Entusiasmado"
    end
  end
  def to_s
    "Olá meu nome é #{@nome}, eu tenho #{idade}"
  end
end

bichinho_virtual = Tamagushi.new 'Petiti'
puts bichinho_virtual.to_s

bichinho_virtual.alterar_fome 15
bichinho_virtual.alterar_saude 20
bichinho_virtual.alterar_idade

puts bichinho_virtual.to_s
puts bichinho_virtual.humor