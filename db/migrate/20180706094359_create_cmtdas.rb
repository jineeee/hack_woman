class CreateCmtdas < ActiveRecord::Migration
  def change
    create_table :cmtdas do |t|
      t.string :content
      t.belongs_to :daily, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
