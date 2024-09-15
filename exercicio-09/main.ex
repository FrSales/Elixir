defmodule SomaParEImpar do
  def main do
    numeros = Enum.map(1..10, fn _->
      IO.gets("Digite um número: ") |> String.trim() |> String.to_integer()
    end)

    soma_pares = numeros |> Enum.filter(fn numero -> rem(numero, 2) == 0 end) |> Enum.sum()
    soma_impares = numeros |> Enum.filter(fn numero -> rem(numero, 2) != 0 end) |> Enum.sum()

    IO.puts("Soma dos números pares: #{soma_pares}")
    IO.puts("Soma dos números ímpares: #{soma_impares}")
  end
end

SomaParEImpar.main()
