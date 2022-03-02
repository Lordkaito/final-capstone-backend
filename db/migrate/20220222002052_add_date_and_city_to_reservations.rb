class AddDateAndCityToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :city, :string
    add_column :reservations, :reservation_date, :datetime
  end
end
