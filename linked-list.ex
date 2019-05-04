defmodule MyNode do
  defstruct [:value, next: nil]

  def traverse_list(head) do
    IO.puts(head.value)

    if head.next do
      traverse_list(head.next)
    end
  end
end

defmodule Create do
  def linked_list([]), do: nil

  def linked_list([num | nil]) do
    %MyNode{value: num}
  end

  def linked_list([num | rest]) do
    %MyNode{
      value: num,
      next: linked_list(rest)
    }
  end
end

head = Create.linked_list([2, 1, 4, 3, 5])
MyNode.traverse_list(head)
