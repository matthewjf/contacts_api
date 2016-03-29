class ChangeColumnPeopleInComments < ActiveRecord::Migration
  def change
    rename_column :comments, :people, :commentable
  end
end
