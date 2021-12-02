class AddGeneroToPeliculaSeries < ActiveRecord::Migration[6.1]
  def change
    add_reference :pelicula_series, :genero
  end
end
