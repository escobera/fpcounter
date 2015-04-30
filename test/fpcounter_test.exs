defmodule FpcounterTest do
  use ExUnit.Case

  test "counting a data function with no adjusts" do
    data_function = Path.expand("./test/fixtures/data_function.json") |> File.read! |> Poison.decode!(as: DataFunction)
    assert Fpcounter.count(data_function) == 7
  end
end
