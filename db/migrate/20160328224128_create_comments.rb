class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :contact, index: true, foreign_key: true
      t.string :text
      t.timestamps
    end
  end
end
