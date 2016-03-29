class DropColumnsFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :contact_id, :integer
    remove_column :comments, :user_id, :integer
  end
end
