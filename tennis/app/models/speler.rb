class Speler < ApplicationRecord
	before_save { self.voonaam = voonaam.downcase, self.voonaam = voonaam.capitalize }
	before_save { self.achternaam = achternaam.downcase, self.achternaam = achternaam.capitalize }
	validates :voornaam,  presence: true, length: { maximum: 50 }
	validates :achternaam, presence: true, length: { maximum: 50 }
	validates :school, presence: true, length: { maximum: 255 }
end
