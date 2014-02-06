class CreateStandardDomains < ActiveRecord::Migration
  def change
    create_table :standard_domains do |t|
      t.integer :subject_id
      t.integer :standardkind_id
      t.text :name
      t.text :abbrev

      t.timestamps
    end
  end
end
