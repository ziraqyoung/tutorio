class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.references :category, null: false, foreign_key: true
      t.references :instructor, null: false, foreign_key: true
      t.float :duration
      t.decimal :price, precision: 5, scale: 2
      t.string :level

      t.timestamps
    end
  end
end
