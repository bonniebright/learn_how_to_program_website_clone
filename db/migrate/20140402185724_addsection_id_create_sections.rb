class AddsectionIdCreateSections < ActiveRecord::Migration
  def change
    add_column :lessons, :section_id, :int
    create_table :sections do |t|
      t.column :name, :string
    end
  end
end
