class CreateCmtcoms < ActiveRecord::Migration
  def change
    create_table :cmtcoms do |t|
      t.string :content
      t.belongs_to :competition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
