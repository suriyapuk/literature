class CreateThailiteratures < ActiveRecord::Migration
  def change
    create_table :thailiteratures do |t|
      t.string :name
      t.string :picture
      t.string :fileupload

      t.timestamps null: false
    end
  end
end
