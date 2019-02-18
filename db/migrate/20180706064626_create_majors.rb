class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors do |t|
      t.date :day
      t.text :content

      t.timestamps null: false
    end
  end
end
