class CreateSpelers < ActiveRecord::Migration[5.2]
  def change
    create_table :spelers do |t|

      t.timestamps
    end
  end
end
