class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :name, :string
      t.column :number, :int
      t.column :content, :text
      t.timestamps
    end
  end
end
