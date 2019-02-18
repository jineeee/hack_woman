class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.string :category
      t.date :day
      t.text :content

      t.timestamps null: false
    end
  end
end
