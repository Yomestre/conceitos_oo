class Conta
  attr_accessor :numero, :titular, :saldo,:limite
  def initialize(params)
    @numero = params[:numero]
    @titular = params[:titular]
    @saldo = params[:saldo]
    @limite = params[:limite]
  end
  def sacar(saque)
    @saldo -= saque  
    check_saldo
  end
  def depositar(deposito)
    @saldo += deposito
  end
  def no_limite?
    unless check_saldo
      true
    else
      false
    end
  end
  def transfere(conta_destino,valor_transferencia)
    if check_trasferencia(valor_transferencia)
    @saldo -= valor_transferencia
    conta_destino.saldo += valor_transferencia
    else
      false
    end
  end
  def ==(comparado)
    if( @titular.nome == comparado.titular.nome && @numero == comparado.numero && @saldo == comparado.saldo && @limite == comparado.limite)
      true
    else
      false
    end
  end
private
  def check_saldo
    if @saldo >= 0
      true
    else
      false
    end
  end
  def check_trasferencia(valor_transferencia)
    if @saldo - valor_transferencia >= 0
      true
    else
      false
    end
  end
end