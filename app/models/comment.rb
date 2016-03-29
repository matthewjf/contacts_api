class Comment < ActiveRecord::Base
  validates :text, :commentable_id, :commentable_type, presence: true

  belongs_to :author,
    foreign_key: :author_id,
    primary_key: :id,
    class_name: :User

  belongs_to :commentable, polymorphic: true
end
