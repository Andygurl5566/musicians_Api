class CreateMusicians < ActiveRecord::Migration[6.1]
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :genre
      t.string :birth_city
      
      t.timestamps
    end
  end
end
