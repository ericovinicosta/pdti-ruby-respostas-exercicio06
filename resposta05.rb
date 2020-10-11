=begin
Classe Conta Corrente: Crie uma classe para implementar uma conta corrente.
A classe deve possuir os seguintes atributos: número da conta, nome do correntista e saldo.
Os métodos são os seguintes: alterarNome, depósito e saque;
No construtor, saldo é opcional, com valor default zero e os demais atributos são obrigatórios.
=end
class ContaCorrente
  attr_accessor :nome_correntista, :numero_conta_corrente, :saldo

  def initialize (numero_conta, nome_correntista, saldo = 0)
    @numero_conta_corrente = numero_conta
    @nome_correntista = nome_correntista
    @saldo = saldo
  end
  def alterar_nome (nome)
    @nome_correntista = nome
  end

  def deposito (valor)
    @saldo += valor
  end

  def saque (valor)
    @saldo -= valor
  end

  def to_s
    "Dados da Conta: #{@numero_conta_corrente}
      Nome do Correntista: #{@nome_correntista}
      Saldo: R$ #{'%.2f' % @saldo}"
  end
end

print 'Informe o Número da Conta: '
numero_conta = gets.to_i
print 'Informe o nome do Correntista: '
nome = gets.chomp.upcase
print 'Informe o saldo inicial: '
saldo = gets.to_f
correntista = ContaCorrente.new numero_conta, nome, saldo
puts correntista.to_s

print 'Informe o novo nome para o Correntista: '
nome = gets.chomp.upcase
correntista.alterar_nome nome
puts correntista.to_s

print 'Deseja fazer (D)epósito ou (R)etirada? '
opcao = gets.chomp.downcase

case opcao
when 'd'
  print 'Informe o valor do deposito: '
  valor = gets.to_s
  correntista.deposito valor
when 'r'
  print 'Informe o valor do saque: '
  valor = gets.to_s
  correntista.saque valor
else
  puts 'Opção INVÁLIDA'
end