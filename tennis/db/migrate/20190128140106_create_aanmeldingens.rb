class CreateAanmeldingens < ActiveRecord::Migration[5.2]
  def change
    create_table :aanmeldingens do |t|
      t.integer :speler_id
      t.integer :toernooi_id

      t.timestamps
    end
  end
end
