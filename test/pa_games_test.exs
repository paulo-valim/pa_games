defmodule PaGamesTest do
  use ExUnit.Case
  doctest PaGames

  test "greets the world" do
    assert PaGames.hello() == :world
  end
end
