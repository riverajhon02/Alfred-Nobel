class Materia < ApplicationRecord
    has_many :notas, dependent: :destroy
end
