

# Commands

defmodule Seating.TakeSeat do
  defstruct [    :seat_id ]
end

defmodule Seating.ReleaseSeat do
  defstruct [:seat_id]
end

# Events

defmodule Seating.SeatTaken do
  defstruct [:seat_id]
end

defmodule Seating.SeatReleased do
  defstruct [:seat_id]
end


# Seat Aggregate

defmodule Seating.SeatState do
  defstruct [:taken?]
end


defmodule Seating.Seat do
  use GenServer

  def start_link(seat_id) do
    initial_state = %Seating.SeatState{taken?: false}
    GenServer.start_link(__MODULE__, initial_state, name: String.to_atom(seat_id))
  end

  def handle_call({:handle_command, command}, _from, state) do
    {:ok, new_events} = decide(command, state)
    new_state = evolve(new_events, state)
    {:reply, {:ok, new_events}, new_state}
  end



  def decide(%Seating.TakeSeat{} = cmd, %Seating.SeatState{} = state) do
    {:ok, [%Seating.SeatTaken{seat_id: cmd.seat_id}]}
  end

  def decide(%Seating.ReleaseSeat{} = cmd, %Seating.SeatState{} = state) do
    {:ok, [%Seating.SeatReleased{seat_id: cmd.seat_id}]}
  end


  def evolve(events, %Seating.SeatState{} = original_state) when is_list(events) do
    Enum.reduce(events, original_state, fn(e, new_state) ->
      evolve(e, new_state)
    end)
  end

  def evolve(%Seating.SeatTaken{} = event, %Seating.SeatState{} = state) do
    %{state | taken?: true}
  end

  def evolve(%Seating.SeatReleased{} = event, %Seating.SeatState{} = state) do
    %{state | taken?: false}
  end

end
