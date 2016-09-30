class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :event_date
      t.text :description
      t.string :place

      t.timestamps null: false
    end
  end
end
