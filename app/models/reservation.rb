class Reservation < ApplicationRecord
  belongs_to :client
  belongs_to :table
  belongs_to :restaurant

  after_create :reserve_table

  private

    def reserve_table
      reservation = Reservation.last
      table = Table.find(reservation.table_id)

      unless table.reserved
        table.update(
          reserved: true,
          reservation_period: reservation.period,
          reserved_at: Time.now
        )
      end
    end
end
