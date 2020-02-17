class Gossip < ApplicationRecord
  validates :title, presence: true, length: {minimum: 3, maximum: 14}
  validates :content, presence: true, length: {minimum: 3, maximum: 300}
  belongs_to :user
  has_many :comments
  has_many :join_table_gossips_tags
  has_many :tags, through: :join_table_gossips_tags
end
