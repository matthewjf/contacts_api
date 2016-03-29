class ChangeComment < ActiveRecord::Migration
  def change
    change_column(:comments, :user_id, :integer, null: false)
    change_column(:comments, :contact_id, :integer, null: false)
    change_column(:comments, :text, :string, null: false)
  end
end
