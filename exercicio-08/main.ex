defmodule AnalisadorPessoas do
  def calcular_estatisticas(pessoas) do
    num_pessoas = length(pessoas)

    num_acima_50_e_abaixo_60 = Enum.count(pessoas, fn {idade, altura, cor_olhos, cor_cabelos, peso} ->
      idade > 50 and peso < 60
    end)

    alturas_inferiores_150 = Enum.filter(pessoas, fn {_, altura, _, _, _} -> altura < 1.50 end)
    media_idades =
      if Enum.count(alturas_inferiores_150) > 0 do
        Enum.sum(Enum.map(alturas_inferiores_150, fn {idade, _, _, _, _} -> idade end)) / Enum.count(alturas_inferiores_150)
      else
        0
      end

    num_olhos_azuis = Enum.count(pessoas, fn {_, _, cor_olhos, _, _} -> cor_olhos == "A" end)
    porcentagem_olhos_azuis =
      if num_pessoas > 0 do
        (num_olhos_azuis * 100) / num_pessoas
      else
        0
      end

    num_ruivos_sem_olhos_azuis = Enum.count(pessoas, fn {_, _, cor_olhos, cor_cabelos, _} ->
      cor_cabelos == "R" and cor_olhos != "A"
    end)

    IO.puts("Quantidade de pessoas com idade superior a 50 anos e peso inferior a 60 kg: #{num_acima_50_e_abaixo_60}")
    IO.puts("Média das idades das pessoas com altura inferior a 1,50 m: #{media_idades}")
    IO.puts("Porcentagem de pessoas com olhos azuis: #{porcentagem_olhos_azuis}%")
    IO.puts("Quantidade de pessoas ruivas e que não possuem olhos azuis: #{num_ruivos_sem_olhos_azuis}")
  end

  def main do
    pessoas = Enum.map(1..6, fn _ ->
      IO.puts("Digite a idade: ")
      idade = String.trim(IO.gets("")) |> String.to_integer()

      IO.puts("Digite a altura (em metros): ")
      altura = String.trim(IO.gets("")) |> String.to_float()

      IO.puts("Digite a cor dos olhos (A - azul; P - preto; V - verde; C - castanho): ")
      cor_olhos = String.trim(IO.gets(""))

      IO.puts("Digite a cor dos cabelos (P - preto; C - castanhos; L - louro; R - ruivo): ")
      cor_cabelos = String.trim(IO.gets(""))

      IO.puts("Digite o peso (em kg): ")
      peso = String.trim(IO.gets("")) |> String.to_float()

      {idade, altura, cor_olhos, cor_cabelos, peso}
    end)

    calcular_estatisticas(pessoas)
  end
end

AnalisadorPessoas.main()
