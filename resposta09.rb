=begin
9. Classe Ponto e Retangulo: Faça um programa completo utilizando funções e classes que:
    a. Possua uma classe chamada Ponto, com os atributos x e y.
    b. Possua uma classe chamada Retangulo, com os atributos largura e altura.
    c. Possua uma função para imprimir os valores da classe Ponto
    d. Possua uma função para encontrar o centro de um Retângulo.
    e. Você deve criar alguns objetos da classe Retangulo.
    f. Cada objeto deve ter um vértice de partida, por exemplo, o vértice inferior esquerdo do retângulo,
       que deve ser um objeto da classe Ponto.
    g. A função para encontrar o centro do retângulo deve retornar o valor para um objeto do tipo ponto
       que indique os valores de x e y para o centro do objeto.
    h. O valor do centro do objeto deve ser mostrado na tela
    i. Crie um menu para alterar os valores do retângulo e imprimir o centro deste retângulo.
=end
class Ponto
  attr_accessor :x, :y
  def initialize(x=0, y=0)
    @x = x
    @y = y
  end
  def to_s
    "(#{@x},#{@y})"
  end
end

class Retangulo
  attr_accessor :largura, :altura, :ponto_inicial
  def initialize(largura, altura, x = 0 , y = 0)
    @largura = largura
    @altura = altura
    @ponto_inicial = Ponto.new x, y
  end
  def ponto_centro
    centro = Ponto.new (@largura / 2) + @ponto_inicial.x, (@altura / 2) + @ponto_inicial.y
  end
end

def mudar_valores (retangulo, altura, largura)
  retangulo.largura = largura
  retangulo.altura = altura
end

retangulo = Retangulo.new 10, 13
ponto = Ponto.new retangulo.ponto_centro.x, retangulo.ponto_centro.y
begin
  print 'Entre com a nova altura: '
  retangulo.altura = gets.to_i
  print 'Entro com a nova largura: '
  retangulo.largura = gets.to_i
  ponto = retangulo.ponto_centro
  puts "O ponto central é: #{ponto.to_s}"
end