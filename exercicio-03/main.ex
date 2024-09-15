defmodule Salario do
  def calcular_saldo_final(salario, valor_conta1, valor_conta2) do
    saldo = salario - (valor_conta1 + valor_conta2) * 1.02
    IO.puts("Salario restante: #{saldo}")
  end
end

IO.puts "Digite o salario"
sal = IO.gets("") |> String.trim() |> String.to_float()

IO.puts "Digite valor da conta 1"
c1 = IO.gets("") |> String.trim() |> String.to_float()

IO.puts "Digite valor da conta 2"
c2 = IO.gets("") |> String.trim() |> String.to_float()

Salario.calcular_saldo_final(sal, c1, c2)
