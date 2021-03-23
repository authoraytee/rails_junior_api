class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.text :text
      
      t.belongs_to :diary, index: true, foreign_key: true

      t.timestamps
    end
  end
end
