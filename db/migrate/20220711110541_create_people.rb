class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :department

      t.timestamps
    end
  end
end
