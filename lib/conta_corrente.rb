class ContaCorrente < Conta
  JUROS = 0.10
  def depositar(deposito)
    @saldo += deposito - JUROS
  end
  def atualizar
  end
end