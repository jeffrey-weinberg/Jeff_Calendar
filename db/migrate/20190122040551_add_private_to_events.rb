class AddPrivateToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :private_event, :boolean
  end
end
