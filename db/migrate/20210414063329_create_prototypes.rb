class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title
      t.text :catch_copy
      t.text :concept 
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
# roomとuserには、foreign_key: trueの制約をつけましょう。こちらの制約をつけることにより、外部キー（今回であればroom_idとuser_id）がないとDBに保存できないようにします。
# もしこの制約をつけなかった場合、room_idカラムとuser_idカラムが空になったり、そこに意図しない値が保存されてしまう可能性があります。そうなるとエラーが起こってしまいます。