class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title, null: false
      t.text :catch_copy, null: false
      t.text :concept, null: false
      t.references :user, foreign_key: true #foreign_key: trueの制約(user_idがないとDBに保存できない様になる)
      t.timestamps
    end
  end
end
