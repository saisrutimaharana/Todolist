class AddTaskToTodoing < ActiveRecord::Migration[7.0]
    def change
      add_column :todoings, :task, :string
    end
end
