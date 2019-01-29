class CreateToernoois < ActiveRecord::Migration[5.2]
  def change
    create_table :toernoois do |t|

      t.timestamps
    end
  end
end
