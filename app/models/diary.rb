class Diary < ApplicationRecord
    has_many :notes
    validates :title, presence: true
    validates :expiration, presence: true
        

    validates :kind, presence: true
end
