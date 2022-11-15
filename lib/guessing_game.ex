defmodule PaGames.GuessingGame do
  alias PaGames.GuessingGame
  defstruct number: 1

  def new do
    %__MODULE__{number: random_number()}
  end

  defp random_number do
    1..10
    |> Enum.random()
  end

  def get_guess() do
    IO.gets("Enter your guess: ")
    |> String.replace("\n", "", trim: true)
    |> String.to_integer()
  end

  def result(guess, %{number: number}) do
    if guess == number do
      "Correct, ur lucky bastard!"
    else
      "Incorrect, guess it better!"
    end
  end

  def play() do
    GuessingGame.result(get_guess(), new())
  end
end
