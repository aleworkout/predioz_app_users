class Pago < ActiveRecord::Base
    belongs_to :member
    belongs_to :user
    
    validates :amount, :predio_name, :predio_address, presence: true
end
