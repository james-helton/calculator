class CreateCalcs < ActiveRecord::Migration
  def change
    create_table :calcs do |t|

      t.timestamps null: false
    end
  end
end
