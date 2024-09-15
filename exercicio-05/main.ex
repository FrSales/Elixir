defmodule Operacoes do
  def menu do
    IO.puts("Escolha uma operação:")
    IO.puts("1 - Média entre os dois números")
    IO.puts("2 - Diferença do maior pelo menor")
    IO.puts("3 - Produto entre os números digitados")
    IO.puts("4 - Divisão do primeiro pelo segundo")
  end

  def operacao(numero1, numero2, escolha) do
    case escolha do
      1 ->
        media = (numero1 + numero2) / 2
        IO.puts("A média entre #{numero1} e #{numero2} é: #{media}")

      2 ->
        diferenca = numero1 - numero2
        IO.puts("A diferença entre #{numero1} e #{numero2} é: #{diferenca}")

      3 ->
        produto = numero1 * numero2
        IO.puts("O produto entre #{numero1} e #{numero2} é: #{produto}")

      4 ->
        if numero2 != 0 do
          divisao = numero1 / numero2
          IO.puts("A divisão de #{numero1} por #{numero2} é: #{divisao}")
        else
          IO.puts("Erro: Divisão por zero não permitida!")
        end

      _ ->
        IO.puts("Escolha inválida. Tente novamente.")
    end
  end

  def main do
    numero1 = IO.gets("Digite o primeiro número: ") |> String.trim() |> String.to_float()
    numero2 = IO.gets("Digite o segundo número: ") |> String.trim() |> String.to_float()

    menu()
    escolha = IO.gets("Digite o número da operação desejada: ") |> String.trim() |> String.to_integer()

    operacao(numero1, numero2, escolha)
  end
end

Operacoes.main()
