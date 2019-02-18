class CreateCmtmas < ActiveRecord::Migration
  def change
    create_table :cmtmas do |t|
      t.string :content
      t.belongs_to :major, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
