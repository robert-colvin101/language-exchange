class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.integer :start_time
      t.integer :end_time
      t.string :language
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
