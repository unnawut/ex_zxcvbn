defmodule ExZxcvbn.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_zxcvbn,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      name: "ExZxcvbn",
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/unnawut/ex_zxcvbn"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.18", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Low-Budget Password Strength Estimation in Elixir."
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Unnawut Leepaisalsuwanna"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/unnawut/ex_zxcvbn"}
    ]
  end
end
