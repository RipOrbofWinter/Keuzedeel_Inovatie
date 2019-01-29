class Speler < ApplicationRecord
	before_save { self.roepnaam = roepnaam.downcase.capitalize }
	before_save { self.achternaam = achternaam.downcase.capitalize }
	validates :roepnaam,  presence: true, length: { maximum: 50 }
	validates :achternaam, presence: true, length: { maximum: 50 }
end
