class Restaurant < ApplicationRecord
  has_many :tables, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :clients
end
