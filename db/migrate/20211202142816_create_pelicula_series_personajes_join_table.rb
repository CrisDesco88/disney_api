class CreatePeliculaSeriesPersonajesJoinTable < ActiveRecord::Migration[6.1]
    def change
      create_table :pelicula_series_personajes, id: false do |t|
        t.bigint :pelicula_serie_id
        t.bigint :personaje_id
      end
  
      add_index :pelicula_series_personajes, :pelicula_serie_id
      add_index :pelicula_series_personajes, :personaje_id
    end
end
