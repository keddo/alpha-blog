class  Article < ApplicationRecord
  belongs_to :user
  validates :title, length: { in: 3..50}
  validates :description, length: { in: 10..300 }
  validates :user_id, presence: true
end