class CreateStandardkinds < ActiveRecord::Migration
  def change
    create_table :standardkinds do |t|
      t.text :name

      t.timestamps
    end
  end
end
