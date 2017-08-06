class Place < ApplicationRecord
    paginates_per 5
    belongs_to :user
    validates :name, presence: true, length: { minimum: 4 }
    validates :address, presence: true
    validates :description, presence: true
end
