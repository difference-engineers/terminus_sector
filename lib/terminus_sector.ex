defmodule TerminusSector do
  @moduledoc """
  This program is designed to report the stats of a given province.

    Needed Statistics:

    Province Name
    Province Faction
    Province Owner

    popcurr - The Current Population
    popmx - The Maximum Population
    industcurr - The Current Industry Utilization
    industmax - The Maximum Industry
    resourcecurr - The Current resource utilization"
    resourcemx - The maximum resource utilization
    loyaltycurr - The current population loyalty
    loyaltymx - the maximum population loyalty
    technology - The current technology level. There is no maximum.
    Population:	Tech+Res/2
    Industry:	Tech+schol/3
    Technology:	Unlimited
    Scholarship:	Tech+pop/3
    Resources	Ind+tech+pop/2
    Loyalty:	Scholarship+Tech-Population
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

  def popmax() do
    div(round(techcurr() + resourcecurr()),2)
  end

  def industcurr() do
    1
  end

  def industmax() do
    div(round(techcurr() + scholcurr()),3)
  end

  def scholcurr() do
    3
  end

  def scholmax() do
    div(round(techcurr() + resourcecurr()),2)
  end

  def resourcecurr() do
    3
  end

  def resourcemax() do
    div(round(techcurr() + popcurr() + industcurr()),3)
  end

  def loyaltycurr() do
    3
  end

  def loyaltymax() do
    div(round(techcurr() + scholcurr()),- popcurr())
  end

  def techcurr do
    5
  end

  def report do
    "#{provname()} is owned by #{provplayer()}, a member of the #{provfact()}. #{provname()} has a Population of #{popcurr()} with a maximum of #{popmax()}, an Industry Rating of #{industcurr()} with a maximum of #{industmax()} a Resources Rating of #{resourcecurr()} with a maximum of #{resourcecurr()} , a Loyalty rating of #{loyaltycurr()} with a maximum of #{loyaltycurr()} and a Technology rating of #{techcurr()}."
  end
end
