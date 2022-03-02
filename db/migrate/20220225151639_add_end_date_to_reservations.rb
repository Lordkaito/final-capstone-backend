class AddEndDateToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :to_date, :string
  end
end
