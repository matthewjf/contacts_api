class RemoveAuthorTypeFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :author_type, :string
  end
end
