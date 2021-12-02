class Personaje < ApplicationRecord
    has_and_belongs_to_many :pelicula_series
end

