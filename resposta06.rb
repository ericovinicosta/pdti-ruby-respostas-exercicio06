=begin
Classe TV: Faça um programa que simule um televisor criando-o como um objeto.
O usuário deve ser capaz de informar o número do canal e aumentar ou diminuir o volume.
Certifique-se de que o número do canal e o nível do volume permanecem dentro de faixas válidas.
=end

class Televisor
  attr_accessor :canal, :volume

  def initialize(canal = 4, volume = 15)
    @canal = canal
    @volume = volume
  end

  def trocar_canal(canal)
    @canal = canal
  end

  def aumentar_volume
    @volume >99 ? @volume += 1 : @volume
  end

  def diminuir_volume
    @volume > 0 ? @volume -= 1 : @volume
  end

  def to_s
    "Canal: #{@canal}
Volume: #{@volume}"
  end
end

Samsung = Televisor.new
puts Samsung.to_s
