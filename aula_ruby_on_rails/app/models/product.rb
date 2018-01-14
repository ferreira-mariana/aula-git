class Product < ApplicationRecord

	validates :name, presence: true, length: {in:3..100}
	validates :category, presence: false, length: {in:0..100}
	validates :price, presence: true, numericality: {only_integer: true}, length: {minimum: 1, maximum: 999}

end
