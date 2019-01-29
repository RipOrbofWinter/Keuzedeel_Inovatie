class CreateTournooistarts < ActiveRecord::Migration[5.2]
  def change
    create_table :tournooistarts do |t|

      t.timestamps
    end
  end
end
