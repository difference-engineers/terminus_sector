defmodule Mix.Tasks.Reports do
  use Mix.Task
  @shortdoc "Prints out a report."
  @moduledoc "TBD"

  @impl Mix.Task
  def run(_) do
    TerminusSector.load()
    IO.inspect(TerminusSector.report())
  end
end
