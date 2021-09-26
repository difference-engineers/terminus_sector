defmodule TerminusSector do
  @moduledoc """
  This program is designed to report the stats of a given province.

    Needed Statistics:

    Province Name
    Province Faction
    Province Owner

    popcurr - The Current Population
    popmx - The Maximum Population
    induscurr - The Current Industry Utilization
    indusMx - The Maximum Industry
    resourcecurr - The Current resource utilization"
    resourcemx - The maximum resource utilization
    loyaltycurr - The current population loyalty
    loyaltymx - the maximum population loyalty
    technology - The current technology level. There is no maximum.

  """

  def provname() do
    "New Ralphsland"
  end

  def provfact() do
    "Federated Suns"
  end

  def provplayer() do
    "James Ryan"
  end

  def popcurr() do
    4
  end

  def industcurr() do
    1
  end

  def resourcecurr() do
    3
  end

  def loyaltycurr() do
    3
  end

  def techcurr do
    5
  end

  def report do
    "#{provname()} is owned by #{provplayer()}, a member of the #{provfact()}. #{provname()} has a Population of #{popcurr()}, an Industry Rating of #{industcurr()}, a Resources Rating of #{resourcecurr()}, a Loyalty rating of #{loyaltycurr()} and a Technology rating of #{techcurr()}."
  end
end
