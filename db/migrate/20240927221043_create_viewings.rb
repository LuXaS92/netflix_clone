class CreateViewings < ActiveRecord::Migration[7.2]
  def change
    create_table :viewings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.integer :duration
      t.boolean :completed

      t.timestamps
    end
  end
end
