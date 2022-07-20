defmodule Pry do
  defmacro __using__(_opts \\ []) do
    quote do
      require IEx
      IEx.pry()
    end
  end
end
