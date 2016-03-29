class AddPeopleToComments < ActiveRecord::Migration
  def change
    add_column :comments, :people, :integer, polymorphic: true, index: true
  end
end
