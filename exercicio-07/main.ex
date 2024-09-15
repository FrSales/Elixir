defmodule TabelaLucro do
  def calcular_lucro(preco_ingresso) do
    preco_inicial = 5.00
    ingressos_iniciais = 120
    despesas = 200.00
    decrementos = 0.50
    aumento_ingressos = 26

    var_preco = preco_inicial - preco_ingresso
    ingressos_vendidos = ingressos_iniciais + div(trunc(var_preco * 100), trunc(decrementos * 100)) * aumento_ingressos
    lucro = (preco_ingresso * ingressos_vendidos) - despesas

    {lucro, preco_ingresso, ingressos_vendidos}
  end

  def format_float(value) do
    :io_lib.format("~.2f", [value]) |> List.to_string()
  end

  def exibir_tabela(preco_ingresso \\ 5.00) do
    if preco_ingresso >= 1.00 do
      {lucro, preco, ingressos_vendidos} = calcular_lucro(preco_ingresso)
      IO.puts("#{format_float(preco)}              | #{ingressos_vendidos}                     | #{format_float(lucro)}")
      exibir_tabela(preco_ingresso - 0.50)
    end
  end

  def main do
    IO.puts("Preço do Ingresso | Quantidade de Ingressos | Lucro")
    exibir_tabela()
  end
end

TabelaLucro.main()
