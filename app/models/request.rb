class Request < ApplicationRecord
  validates :date, presence: true
  validates :name, length: { in: 1..255 }
  validates :email, length: { in: 1..255 }
  validates :department, length: { in: 1..255 }
  validates :phone, length: { in: 1..11 }
  validates :manager, presence: true
  validates :chief, presence: true
  validates :mailing, presence: true
  validates :purpose, length: { in: 1..255 }
  validates :reason, length: { in: 1..255 }
  validates :content, presence: true
  validates :user, length: { in: 1..255 }
#  validates :status, length: { in: 1..255 }
end
