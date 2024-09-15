defmodule Multiplication do
  def multiply(a, b, c) do
    a * b * c
  end
end

IO.puts "Digite o primeiro número:"
num1 = IO.gets("") |> String.trim() |> String.to_integer()

IO.puts "Digite o segundo número:"
num2 = IO.gets("") |> String.trim() |> String.to_integer()

IO.puts "Digite o terceiro número:"
num3 = IO.gets("") |> String.trim() |> String.to_integer()

result = Multiplication.multiply(num1, num2, num3)
IO.puts "O resultado da multiplicação é: #{result}"
