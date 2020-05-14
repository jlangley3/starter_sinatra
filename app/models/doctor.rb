class Doctor < ActiveRecord::Base
    has_many :appointments
    has_many :families, through: :appointments
end