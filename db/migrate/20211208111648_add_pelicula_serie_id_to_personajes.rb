class AddPeliculaSerieIdToPersonajes < ActiveRecord::Migration[6.1]
  def change
    add_column :personajes, :pelicula_serie_id, :bigint
    add_index :personajes, :pelicula_serie_id
  end
end
