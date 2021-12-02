class CreatePersonajes < ActiveRecord::Migration[6.1]
  def change
    create_table :personajes do |t|
      t.string :imagen
      t.string :nombre
      t.integer :edad
      t.integer :peso
      t.text :historia

      t.timestamps
    end
  end
end
