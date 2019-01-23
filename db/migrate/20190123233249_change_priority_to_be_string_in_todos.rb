class ChangePriorityToBeStringInTodos < ActiveRecord::Migration[5.2]
  def change
    change_column :todos, :priority, :string
  end
end
