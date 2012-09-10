class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :category
      t.string :ISPN

      t.timestamps
    end
  end
end
