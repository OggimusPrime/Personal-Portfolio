class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :summary
      t.text :skills
      t.string :facebook
      t.string :github
      t.string :linkedin
      t.string :stackoverflow
      t.string :email
      t.string :phone
      t.string :avatar
      t.string :headshot

      t.timestamps null: false
    end
  end
end
