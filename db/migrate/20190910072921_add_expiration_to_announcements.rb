class AddExpirationToAnnouncements < ActiveRecord::Migration[5.1]
  def change
    add_column :announcements, :expiration, :date
  end
end
