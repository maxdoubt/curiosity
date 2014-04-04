class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.text :name
      t.date :begin_date
      t.date :end_date

      t.timestamps
    end
  end
end
