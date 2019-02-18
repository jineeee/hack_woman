class CreateCmtlis < ActiveRecord::Migration
  def change
    create_table :cmtlis do |t|
      t.string :content
      t.belongs_to :license, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
