class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # Colocar el acesor de Dragonfly que nos permitirá conectar nuestro middleware con el modelo User
  dragonfly_accessor :image

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

   # 1 => admin
   # 2 => cajero
   ROLES = %i[admin cajero]

   def roles=(roles)
     roles = [*roles].map { |r| r.to_sym }
     self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
   end

   def roles
     ROLES.reject do |r|
       ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
     end
   end

   def has_role?(role)
     roles.include?(role)
   end

end
