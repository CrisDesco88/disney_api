class AddPersonajeIdToPeliculaSeries < ActiveRecord::Migration[6.1]
  def change
    add_column :pelicula_series, :personaje_id, :bigint
    add_index :pelicula_series, :personaje_id
  end
end
