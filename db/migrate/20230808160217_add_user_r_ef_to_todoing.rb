class AddUserREfToTodoing < ActiveRecord::Migration[7.0]
  def change
    add_reference :todoings, :user, null: false, foreign_key: true
  end
end
