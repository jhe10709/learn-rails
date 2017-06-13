class Article < ActiveRecord::Base
  # Comments relation
  has_many :comments
  # Adds validation to the Article model
  validates :title, presence: true,
                    length: { minimum: 5 }
end
