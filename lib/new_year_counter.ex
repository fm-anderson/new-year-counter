defmodule NewYearCounter do
  use Application

  def start(_type, _args) do
    NewYearCounter.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    time = DateTime.new!(Date.new!(2025, 1, 1), Time.new!(0,0,0,0), "Etc/UTC")
    counter = DateTime.diff(time, DateTime.utc_now())

    days = div(counter, 86400)
    hours = div(rem(counter, 86400), 60 * 60)
    minutes = div(rem(counter, 3600), 60)
    seconds = rem(counter, 60)

    IO.puts("Time until new year:")
    IO.puts("#{days} days, #{hours} hours, #{minutes} minutes, #{seconds} seconds")
  end
end
