class CreateTodoings < ActiveRecord::Migration[7.0]
  def change
    create_table :todoings do |t|

      t.timestamps
    end
  end
end
