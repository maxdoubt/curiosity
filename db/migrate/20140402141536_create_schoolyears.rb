class CreateSchoolyears < ActiveRecord::Migration
  def change
    create_table :schoolyears do |t|
      t.date :begin_date
      t.date :end_date
      t.text :name

      t.timestamps
    end
  end
end
