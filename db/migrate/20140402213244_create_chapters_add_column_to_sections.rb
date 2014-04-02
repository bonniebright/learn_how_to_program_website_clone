class CreateChaptersAddColumnToSections < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.column :name, :string
    end
    add_column :sections, :chapter_id, :int
  end
end
