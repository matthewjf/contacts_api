class DropCommentableFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :commentable, :integer
  end
end
