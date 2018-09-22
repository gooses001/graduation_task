class Entry < ApplicationRecord
  validates :entry_user, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :entry_name, presence: true
  belongs_to :request
#  has_many :requests
#  has_many :request_users, through: :requests, source: :user
end
