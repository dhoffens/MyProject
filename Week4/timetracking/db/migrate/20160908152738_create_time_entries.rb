class CreateTimeEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :time_entries do |t|
      t.references :project, foreign_key: true
      t.integer :hours
      t.integer :minutes
      t.text :comment
      t.datetime :date

      t.timestamps
    end
  end
end
