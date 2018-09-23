class Request < ApplicationRecord
  validates :date, presence: true, format: { with: /\A\d{4}-\d{2}-\d{2}\z/ }
  validates :name, length: { in: 1..255 }
  validates :email, length: { in: 1..255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :department, length: { in: 1..255 }
  validates :phone, length: { in: 1..11 }
  validates :manager, presence: true
  validates :chief, presence: true
  validates :mailing, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :purpose, length: { in: 1..255 }
  validates :reason, length: { in: 1..255 }
  validates :content, presence: true
#  validates :user, length: { in: 1..255 }
#  validates :user_email, length: { in: 1..255 }
#  validates :status, length: { in: 1..255 }

  has_many :entries,dependent: :destroy
  has_many :entry_users, source: :request_id
  accepts_nested_attributes_for :entries,allow_destroy: true
#  belongs_to :entry
end
