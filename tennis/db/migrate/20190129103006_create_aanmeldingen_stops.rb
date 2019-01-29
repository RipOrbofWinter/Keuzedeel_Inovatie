class CreateAanmeldingenStops < ActiveRecord::Migration[5.2]
  def change
    create_table :aanmeldingen_stops do |t|

      t.timestamps
    end
  end
end
