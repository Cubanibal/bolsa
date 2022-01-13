class Empresa < ApplicationRecord
	belongs_to :usuario
	validates :simbolo, presence: true
	validates :simbolo, format: {without: /\s/}  
end
