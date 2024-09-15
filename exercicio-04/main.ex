IO.puts "Digite o primeiro número:"
n1 = IO.gets("") |> String.trim() |> String.to_float()
IO.puts "Digite o segundo número:"
n2 = IO.gets("") |> String.trim() |> String.to_float()

menor = if n1 < n2 do
  n1
else
  n2
end

IO.puts("O menor número é: #{menor}")
