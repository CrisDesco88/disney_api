class PeliculaSerie < ApplicationRecord
    has_and_belongs_to_many :personajes
    belongs_to :genero
end
