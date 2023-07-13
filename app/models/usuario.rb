class Usuario < ApplicationRecord
  validates :nombre, presence: { message: "no puede estar en blanco" }
  validates :contrasena, presence: { message: "no puede estar en blanco" }
end
