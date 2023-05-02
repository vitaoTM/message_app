class Message < ApplicationRecord
  validates :body, presence: true#, length: { minimum: 10, maximum: 240 }
  belongs_to :user
  scope :custom_display, -> { order(:created_at).last(15) }
end
