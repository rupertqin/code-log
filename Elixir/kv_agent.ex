
## my  use keyword list
defmodule KV.Bucket do
  def start_link do
    Agent.start_link fn -> [] end
  end

  def put(pid, k, v) do
    Agent.update pid, &[{String.to_atom(k), v} | &1]
  end

  def get(pid, k) do
    Agent.get pid, &(&1[String.to_atom(k)])
  end
end


## official  use map
defmodule KV.Bucket do
  def start_link do
    Agent.start_link fn -> %{} end
  end

  def put(pid, k, v) do
    Agent.update pid, &Map.put(&1, k, v)
  end

  def get(pid, k) do
    Agent.get pid, &Map.get(&1, k)
  end
end
