defmodule Seating do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # Define workers and child supervisors to be supervised
    children = [
      # Starts a worker by calling: Seating2.Worker.start_link(arg1, arg2, arg3)
      # worker(Seating2.Worker, [arg1, arg2, arg3]),
      worker(Seating.Seat, ["1"], id: 1),
      worker(Seating.Seat, ["2"], id: 2),
      worker(Seating.Seat, ["3"], id: 3),
      worker(Seating.Seat, ["4"], id: 4),
      worker(Seating.Seat, ["5"], id: 5),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Seating.Supervisor]
    Supervisor.start_link(children, opts)
  end



end
