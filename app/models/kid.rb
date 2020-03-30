class Kid < ApplicationRecord
    validates :username, presence: true, length: { minimum: 7, maximum: 25 }
    validates :age, presence: true, numericality: { greater_than: 6, less_than: 15 }
end
