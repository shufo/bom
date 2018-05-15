defmodule BOM do
  @moduledoc """
  Documentation for Bom.
  """

  @bom <<239, 187, 191>>

  @doc """
  Add byte order mark to text

  ## Examples

      iex> BOM.add("hello")
      "\uFEFFhello" 

  """
  def add(string) when is_binary(string) do
    @bom <> string
  end

  @doc """
  Add byte order mark to file

  ## Examples

      iex> File.write!("test/fixtures/test.csv", "test") 
      iex> BOM.file_add("test/fixtures/test.csv")
      iex> File.read!("test/fixtures/test.csv") 
      "\uFEFFtest"

  """
  def file_add(path) when is_binary(path) do
    content = @bom <> File.read!(path)
    File.write!(path, content, [:write])
  end
end
