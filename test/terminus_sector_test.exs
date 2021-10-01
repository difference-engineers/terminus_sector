defmodule TerminusSectorTest do
  use ExUnit.Case
  doctest TerminusSector

  test "first test" do
    assert TerminusSector.report() == "New Ralphsland is owned by James Ryan, a member of the Federated Suns. New Ralphsland has a Population of 4 with a maximum of 4, an Industry Rating of 1 with a maximum of 2 a Resources Rating of 3 with a maximum of 3 , a Loyalty rating of 3 with a maximum of 3 and a Technology rating of 5."
  end

  test "ensure load pulls in the right data" do
    assert TerminusSector.load() == {:ok, "name, faction, population\nNew Avalon, Federated Suns, 9 "}
  end

  test "ensure we parse the data" do
    assert TerminusSector.parse() == {:ok, [%{"name" => "new Avalon", "faction" => "Federated Suns", "population" => 9}]}
  end
end
