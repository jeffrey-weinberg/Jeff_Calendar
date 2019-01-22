class AddCompletedToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :completed_at, :datetime
  end
end
