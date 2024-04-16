defmodule NewYearCounter do
  use Application

  def start(_type, _args) do
    NewYearCounter.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do

  end
end
