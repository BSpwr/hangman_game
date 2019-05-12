defmodule TextClient.Interact do

  alias TextClient.Player
  alias TextClient.State

  def start() do
    Hangman.new_game()
    |> setup_state()
    |> Player.init()
  end

  defp setup_state(game) do
    %State{
      game_service: game,
      tally: Hangman.tally(game),
    }
  end

end