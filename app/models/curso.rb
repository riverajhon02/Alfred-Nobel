class Curso < ApplicationRecord
    has_many :users, dependent: :nullify
      accepts_nested_attributes_for :users
end
