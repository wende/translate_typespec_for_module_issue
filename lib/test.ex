defmodule TranslateTypespecExample do
  @type device() :: :stdio

  {set, bag} = :elixir_module.data_tables(__MODULE__)
  Kernel.Typespec.translate_typespecs_for_module(set, bag)

  @spec a() :: device()
  def a(), do: :stdio
end
