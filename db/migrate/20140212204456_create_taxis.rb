class CreateTaxis < ActiveRecord::Migration[5.0]
  def change
    create_table :taxis do |t|
      t.timestamps null: false
    end
  end
end
