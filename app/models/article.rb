class Article < ActiveRecord::Base
  # Comments relation, depender destroy will remove comments if
  # article have been removed.
  has_many :comments, dependent: :destroy
  # Adds validation to the Article model
  validates :title, presence: true,
                    length: { minimum: 5 }
end
