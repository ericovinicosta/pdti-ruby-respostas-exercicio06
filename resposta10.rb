=begin
10. Classe Bomba de Combustível: Faça um programa completo utilizando classes e métodos que:
  a. Possua uma classe chamada bombaCombustível, com no mínimo esses atributos:
      i. tipoCombustivel.
      ii. valorLitro
      iii. quantidadeCombustivel
  b. Possua no mínimo esses métodos:
      i. abastecerPorValor( ) – método onde é informado o valor a ser abastecido e mostra a quantidade de litros que foi colocada no veículo
      ii. abastecerPorLitro( ) – método onde é informado a quantidade em litros de combustível e mostra o valor a ser pago pelo cliente.
      iii. alterarValor( ) – altera o valor do litro do combustível.
      iv. alterarCombustivel( ) – altera o tipo do combustível.
      v. alterarQuantidadeCombustivel( ) – altera a quantidade de combustível restante na bomba.
OBS: Sempre que acontecer um abastecimento é necessário atualizar a quantidade de combustível total na bomba.
=end
class BombaDeCombustivel
  attr_accessor :tipo_combustivel, :valor_litro, :quantidade_combustivel

  def initialize(tipo_combustivel, valor_litro, quantidade_combustivel)
    @tipo_combustivel = tipo_combustivel
    @valor_litro = valor_litro.to_f
    @quantidade_combustivel = quantidade_combustivel.to_f
  end

  def abastecer_por_valor(valor)
    (valor / @valor_litro).to_f
  end
  def abastercer_por_litro(litro)
    (litro * @valor_litro).to_f
  end
  def alterar_valor(novo_valor)
    @valor_litro = novo_valor.to_f
  end
  def alterar_combustivel(novo_combustivel)
    @tipo_combustivel = novo_combustivel
  end
  def alterar_quantidade_combustivel(quantidade)
    @quantidade_combustivel += quantidade
  end
  def to_s
    "#{@tipo_combustivel.upcase} - R$ #{'%.3f'% @valor_litro} - #{'%.2f'% @quantidade_combustivel} l"
  end
end

bico_01 = BombaDeCombustivel.new "etanol", 3.419, 1000
puts bico_01.to_s