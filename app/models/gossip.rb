class Gossip < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true
  validates :title, 
    length: { in: 3..14 }
 
end
