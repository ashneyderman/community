defmodule Edown.Mixfile do
  use Mix.Project

  def project do
    [app: :edown,
     version: "0.6.0",
     description: description,
     package: package,
     deps: [],
     fetch: fetch]
  end

  defp description do
    """
    Erlang package that generates markdown from edocs
    """
  end

  defp package do
    [files: ~w(src rebar.config README.md LICENSE),
     contributors: ["Ulf Wiger"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/uwiger/edown"}]
  end

  defp fetch do
    [
      scm: :git,
      url: "git@github.com:uwiger/edown.git",
      ref: "dd2d2adcc25981d8fdb87985b32d9be006e451c6" # master as of Feb/Mar'15
    ]
  end

end