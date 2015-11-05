class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :category
      t.string :address
      t.string :photo

      t.timestamps null: false
    end
  end
end
