defmodule PrecoCarro do
  def calcular_preco(custo_fabrica) do
    {percentual_distribuidor, percentual_impostos} = case custo_fabrica do
      x when x <= 12_000 ->
        {5, 0}

      x when x > 12_000 and x <= 25_000 ->
        {10, 15}

      x when x > 25_000 ->
        {15, 20}
    end

    distribuidor = custo_fabrica * percentual_distribuidor / 100
    impostos = custo_fabrica * percentual_impostos / 100
    preco_consumidor = custo_fabrica + distribuidor + impostos

    IO.puts("Custo de fábrica: R$ #{custo_fabrica}")
    IO.puts("Percentual do distribuidor: #{percentual_distribuidor}%")
    IO.puts("Percentual dos impostos: #{percentual_impostos}%")
    IO.puts("Preço ao consumidor: R$ #{preco_consumidor}")
  end

  def main do
    custo_fabrica = IO.gets("Digite o custo de fábrica do carro (em R$): ") |> String.trim() |> String.to_float()

    calcular_preco(custo_fabrica)
  end
end

PrecoCarro.main()
