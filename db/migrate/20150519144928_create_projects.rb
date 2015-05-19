class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :link
      t.string :image
      t.date :project_date
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :projects, :users
  end
end
