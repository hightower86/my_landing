class Client < ApplicationRecord
  validates :name,  :last_name, presence: true, length: { minimum: 2}
  validates :email, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
