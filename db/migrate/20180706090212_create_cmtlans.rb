class CreateCmtlans < ActiveRecord::Migration
  def change
    create_table :cmtlans do |t|
      t.string :content
      t.belongs_to :language, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
