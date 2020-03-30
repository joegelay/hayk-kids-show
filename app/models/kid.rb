class Kid < ApplicationRecord
    validates :username, presence: true 
    validates :age, presence: true 
    validates :age, numericality: { greater_than: 6 }
    validates :age, numericality: { less_than: 15 }
    valudates :username, length: { minimum: 7, maximum: 25 }
end
