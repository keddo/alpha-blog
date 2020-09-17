class  Article < ApplicationRecord
  validates :title, length: { in: 3..50}
  validates :description, length: { in: 10..300 }
end