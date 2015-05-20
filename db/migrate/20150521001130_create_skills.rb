class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :tag
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :skills, :projects
  end
end
