class Uf < ApplicationRecord
    validates :date, presence: true
    validates :uf, presence: true
end
