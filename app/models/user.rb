class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # Colocar el acesor de Dragonfly que nos permitirá conectar nuestro middleware con el modelo User
  dragonfly_accessor :image

  # Creamos un enum para el atributo role y con el set_default_role lo que hacemos es asignar
  # el rol de usuario

  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
