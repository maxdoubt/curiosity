class CreateSectiondays < ActiveRecord::Migration
  def change
    create_table :sectiondays do |t|
      t.integer :daykind_id
      t.time :begin_time
      t.time :end_time

      t.timestamps
    end
  end
end
