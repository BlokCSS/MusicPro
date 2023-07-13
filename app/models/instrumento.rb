class Instrumento < ApplicationRecord
    validates :nombre, presence: { message: "no puede estar en blanco" }
    validates :tipo, presence: { message: "no puede estar en blanco" }
    validates :marca, presence: { message: "no puede estar en blanco" }
    validates :precio, presence: { message: "no puede estar en blanco" }
  end
  