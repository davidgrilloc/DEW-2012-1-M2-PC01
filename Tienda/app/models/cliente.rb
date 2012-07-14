class Cliente < ActiveRecord::Base

has_many :Cliente_Producto
  has_many :productos, :through => :Cliente_Producto
end
