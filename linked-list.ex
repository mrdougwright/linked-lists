defmodule MyNode do
  defstruct [:value, next: nil]
end

defmodule LinkedList do
  def new([]), do: nil
  def new([num | nil]), do: %MyNode{value: num}

  def new([num | rest]) do
    %MyNode{
      value: num,
      next: new(rest)
    }
  end

  def traverse(nil), do: nil

  def traverse(node) do
    IO.puts(node.value)
    traverse(node.next)
  end
end

llist = LinkedList.new([2, 1, 4, 3, 5])
LinkedList.traverse(llist)
