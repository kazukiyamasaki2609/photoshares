class CreateMicroposts < ActiveRecord::Migration[5.2]
  def change
    create_table :microposts do |t|
      t.string :content
      t.string :place
      t.string :time
      t.string :move
      t.string :necessary
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
