class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :category
      t.date :day
      t.text :content

      t.timestamps null: false
    end
  end
end
