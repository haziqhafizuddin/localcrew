class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.date :start_date
      t.date :end_date
      t.string :title
      t.text :description
      t.string :website
      t.integer :user_id

      t.timestamps
    end
  end
end
