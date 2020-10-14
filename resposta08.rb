=begin
Classe Macaco: Desenvolva uma classe Macaco,que possua os atributos nome e bucho (estomago)
e pelo menos os métodos comer(), verBucho() e digerir().
Faça um programa ou teste interativamente, criando pelo menos dois macacos,
alimentando-os com pelo menos 3 alimentos diferentes e verificando o conteúdo do estomago a cada refeição.
Experimente fazer com que um macaco coma o outro. É possível criar um macaco canibal?
=end
class Macaco
  attr_accessor :nome, :bucho

  def initialize(nome)
    @nome = nome
  end
  def comer(comida)
    @bucho = comida
  end
  def ver_bucho
    "Aqui tem #{@bucho}"
  end
  def digerir
    @bucho = ''
  end
  def to_s
    "Meu nome é #{@nome}"
  end
end

puts 'Alimente os macacos..'
puts 'Dê nome aos macacos'
print 'Qual o nome do primeiro: '
macaco_1 = Macaco.new gets.chomp
print  'Qual o nome do segundo: '
macaco_2 = Macaco.new gets.chomp
puts macaco_1.to_s
puts macaco_2.to_s
cont = 0
begin
  cont += 1
  print 'Que comida deseja dar: '
  macaco_1.comer gets.chomp
  puts macaco_1.ver_bucho
  macaco_1.digerir
end while cont < 3
macaco_2.comer macaco_1
puts macaco_2.ver_bucho