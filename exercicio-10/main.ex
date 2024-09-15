defmodule MediaIdades do
  def main do
    idades = ler_idades([])
    media = calcular_media(idades)
    IO.puts("Média das idades digitadas: #{media}")
  end

  def ler_idades(idades) do
    IO.write("Digite uma idade (0 para finalizar): ")
    idade = IO.gets("") |> String.trim() |> String.to_integer()

    if idade == 0 do
      Enum.reverse(idades)
    else
      ler_idades([idade | idades])
    end
  end

  def calcular_media(idades) do
    if length(idades) > 0 do
      Enum.sum(idades) / length(idades)
    else
      0
    end
  end
end

MediaIdades.main()
