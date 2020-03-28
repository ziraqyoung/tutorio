class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.references :section, null: false, foreign_key: true
      t.string :lesson_title

      t.timestamps
    end
  end
end
