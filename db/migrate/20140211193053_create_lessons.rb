class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :user_id
      t.integer :lesson_template_id
      t.date :begin_date
      t.date :end_date
      t.integer :lesson_state_id
      t.integer :parent_id
      t.text :title

      t.timestamps
    end
  end
end
