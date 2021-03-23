class Diary < ApplicationRecord
    has_many :notes
    validates :title, presence: true
    validates :expiration, presence: true
        
    # Вот так не работает
    #enum kind: [ :public, :private ]
        
    # А вот так работает
    #enum kind: [ :publichniy, :privatniy ]\
    validates :kind, presence: true
    #enum kind: {
    #public: 1,
    #private: 2
    #has_many :notes
end

# Это не надо болье -------------------------------------------------------------------
# Я не понимаю как сделать enum 
# enum :status, [ :active, :archived ]

# enum sex: {
#    male: 1,
#    female: 2
# }


#enum sex: [ :male, :female ]
#enum status: [:shipped, :being_packaged, :complete, :cancelled]
#class Conversation < ActiveRecord::Base
#    enum :status, active: 0, archived: 1
#  end