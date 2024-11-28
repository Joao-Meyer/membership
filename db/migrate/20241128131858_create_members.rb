class CreateMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :surname
      t.string :address
      t.integer :number
      t.string :neighborhood
      t.string :city
      t.string :zip_code
      t.string :phone
      t.string :telephone
      t.date :birth_date
      t.string :sex
      t.string :nationality
      t.string :naturality
      t.string :uf
      t.boolean :communicant
      t.string :scholarship
      t.string :father_name
      t.string :mother_name
      t.integer :book_number
      t.integer :record_number
      t.date :reception_date
      t.string :minister_rev
      t.string :observation

      t.timestamps
    end
  end
end
