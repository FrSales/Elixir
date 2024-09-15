defmodule SalaryCalculator do
  def calculate_salary(fixed_salary, sales) do
    commission = sales * 0.04
    final_salary = fixed_salary + commission
    IO.puts "Comissão: #{commission}"
    IO.puts "Salário final: #{final_salary}"
  end
end

IO.puts "Digite o salário fixo:"
fixed_salary = IO.gets("") |> String.trim() |> String.to_float()

IO.puts "Digite o valor total das vendas:"
sales = IO.gets("") |> String.trim() |> String.to_float()

SalaryCalculator.calculate_salary(fixed_salary, sales)
