class Client < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :tables, through: :reservations

  def reserve(restaurant, table_num, period)
    Reservation.create(
      restaurant_id: Restaurant.find_by(name: restaurant).id,
      client_id: id,
      table_id: table_num,
      period: period
    )
  end
end
