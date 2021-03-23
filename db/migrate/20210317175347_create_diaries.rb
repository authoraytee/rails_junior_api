class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      t.string :title
      t.datetime :expiration
      t.enum :kind {public: 2,private: 1}

      t.timestamps
    end
  end
end
