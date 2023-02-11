defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    before_discount * (100 - discount) / 100
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    (hourly_rate * 22.0) |> daily_rate |> apply_discount(discount) |> Kernel.ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    discount_rate = hourly_rate |> daily_rate |> apply_discount(discount)
    (budget / discount_rate) |> Float.floor(1)
  end
end
